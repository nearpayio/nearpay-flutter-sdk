package io.nearpay.flutter.plugin;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.List;
import java.util.Locale;
import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

import io.nearpay.sdk.Environments;
import io.nearpay.sdk.NearPay;
import io.nearpay.sdk.data.models.Session;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.AuthenticationData;
import io.nearpay.sdk.utils.enums.PurchaseFailure;
import io.nearpay.sdk.utils.enums.RefundFailure;
import io.nearpay.sdk.utils.enums.SessionFailure;
import io.nearpay.sdk.utils.enums.StatusCheckError;
import io.nearpay.sdk.utils.listeners.BitmapListener;
import io.nearpay.sdk.utils.listeners.PurchaseListener;
import io.nearpay.sdk.utils.listeners.RefundListener;
import io.nearpay.sdk.utils.enums.ReconcileFailure;
import io.nearpay.sdk.data.models.Merchant;
import io.nearpay.sdk.data.models.LocalizationField;
import io.nearpay.sdk.data.models.NameField;
import io.nearpay.sdk.data.models.LabelField;
import io.nearpay.sdk.data.models.ReconciliationReceipt;
import io.nearpay.sdk.data.models.ReconciliationDetails;
import io.nearpay.sdk.data.models.ReconciliationLabelField;
import io.nearpay.sdk.data.models.ReconciliationSchemes;
import io.nearpay.sdk.utils.listeners.ReconcileListener;
import io.nearpay.sdk.utils.enums.ReversalFailure;
import io.nearpay.sdk.utils.enums.LogoutFailure;
import io.nearpay.sdk.utils.listeners.LogoutListener;
import io.nearpay.sdk.utils.listeners.ReversalListener;
import com.google.gson.Gson;
import java.util.ArrayList;

import io.nearpay.sdk.utils.listeners.SessionListener;
import io.nearpay.sdk.utils.listeners.SetupListener;
import io.nearpay.sdk.utils.enums.SetupFailure;

/** NearpayPlugin */
public class NearpayPlugin implements FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native
    /// Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine
    /// and unregister it
    /// when the Flutter Engine is detached from the Activity
    private MethodChannel channel;
    private NearPay nearPay;
    private static Result flutterResult;
    private Context context;
    private String jwtKey = "jwt";
    private String timeOutDefault = "10";
    private String authTypeShared = "";
    private String authValueShared = "";

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "nearpay");
        channel.setMethodCallHandler(this);
        this.context = flutterPluginBinding.getApplicationContext();
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    public AuthenticationData getAuthType(String authType, String inputValue) {
        AuthenticationData authentication = authType.equals("userenter") ? AuthenticationData.UserEnter.INSTANCE
                : authType.equals("email") ? new AuthenticationData.Email(inputValue)
                        : authType.equals("mobile") ? new AuthenticationData.Mobile(inputValue)
                                : authType.equals(jwtKey) ? new AuthenticationData.Jwt(inputValue)
                                        : AuthenticationData.UserEnter.INSTANCE;
        return authentication;
    }

    public boolean isAuthInputValidation(String authType, String inputValue) {
        boolean isAuthValidate = authType.equals("userenter") ? true : inputValue == "" ? false : true;
        return isAuthValidate;
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        flutterResult = result;
        if (call.method.equals("purchase")) {
            if (nearPay != null) {
                paymentValidation(call);
            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap);
            }
        } else if (call.method.equals("refund")) {
            if (nearPay != null) {
                refundValidation(call);
            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap);
            }
        } else if (call.method.equals("reconcile")) {
            if (nearPay != null) {
                Boolean enableReceiptUi = call.argument("enableReceiptUi") == null ? true
                        : call.argument("enableReceiptUi");
                String authvalue = call.argument("authvalue") == null ? this.authValueShared
                        : call.argument("authvalue").toString();
                String authType = call.argument("authtype") == null ? this.authTypeShared
                        : call.argument("authtype").toString();
                String finishTimeout = call.argument("finishTimeout") != null
                        ? call.argument("finishTimeout").toString()
                        : timeOutDefault;
                String adminPin = call.argument("adminPin") == null ? null : call.argument("adminPin");

                Long timeout = Long.valueOf(finishTimeout);
                boolean isAuthValidated = isAuthInputValidation(authType, authvalue);

                if (!isAuthValidated) {
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                            "Authentication parameter missing");
                    sendResponse(paramMap);
                } else {
                    doReconcileAction(enableReceiptUi, authType, authvalue, timeout, adminPin);
                }

            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap);
            }
        } else if (call.method.equals("reverse")) {
            if (nearPay != null) {
                String transactionUuid = call.argument("transaction_uuid") != null
                        ? call.argument("transaction_uuid").toString()
                        : "";
                Boolean enableReceiptUi = call.argument("enableReceiptUi") == null ? true
                        : call.argument("enableReceiptUi");
                String authvalue = call.argument("authvalue") == null ? this.authValueShared
                        : call.argument("authvalue").toString();
                String authType = call.argument("authtype") == null ? this.authTypeShared
                        : call.argument("authtype").toString();
                String finishTimeout = call.argument("finishTimeout") != null
                        ? call.argument("finishTimeout").toString()
                        : timeOutDefault;
                Long timeout = Long.valueOf(finishTimeout);
                boolean isAuthValidated = isAuthInputValidation(authType, authvalue);

                if (transactionUuid == "") {
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                            "Transaction UUID parameter missing");
                    sendResponse(paramMap);
                } else if (!isAuthValidated) {
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                            "Authentication parameter missing");
                    sendResponse(paramMap);
                } else {
                    doReverseAction(transactionUuid, enableReceiptUi, authType, authvalue, timeout);
                }

            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap);
            }
        } else if (call.method.equals("logout")) {
            if (nearPay != null) {
                doLogoutAction();
            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
            }
        } else if (call.method.equals("setup")) {
            if (nearPay != null) {
                String authvalue = this.authValueShared;
                String authType = this.authTypeShared;
                boolean isAuthValidated = isAuthInputValidation(authType, authvalue);
                if (!isAuthValidated) {
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                            "Authentication parameter missing");
                    sendResponse(paramMap);
                } else {
                    doSetup(authType, authvalue);
                }
            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap);
            }
        } else if (call.method.equals("initialize")) {
            String authvalue = call.argument("authvalue") == null ? "" : call.argument("authvalue").toString();
            String authType = call.argument("authtype") == null ? "" : call.argument("authtype").toString();
            this.authTypeShared = authType;
            this.authValueShared = authvalue;
            boolean isAuthValidated = isAuthInputValidation(authType, authvalue);
            String localeStr = call.argument("locale") != null ? call.argument("locale").toString() : "default";
            Locale locale = localeStr.equals("default") ? Locale.getDefault() : Locale.getDefault();
            String environmentStr = call.argument("environment") == null ? "sandbox"
                    : call.argument("environment").toString();
            Environments env = environmentStr.equals("sandbox") ? Environments.SANDBOX
                    : environmentStr.equals("production") ? Environments.PRODUCTION : Environments.TESTING;
            if (!isAuthValidated) {
                Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                        "Authentication parameter missing");
                sendResponse(paramMap);
            } else {
                nearPay = new NearPay(this.context, getAuthType(authType, authvalue), locale, env);
                Map<String, Object> paramMap = commonResponse(ErrorStatus.success_code, "NearPay initialized");
                sendResponse(paramMap);
            }
        } else if (call.method.equals("session")) {
            String sessionID = call.argument("sessionID") == null ? "" : call.argument("sessionID").toString();
            String finishTimeout = call.argument("finishTimeout") != null ? call.argument("finishTimeout").toString()
                    : timeOutDefault;
            Long timeout = Long.valueOf(finishTimeout);
            Boolean enableReceiptUi = call.argument("enableReceiptUi") == null ? true
                    : call.argument("enableReceiptUi");
            Boolean enableReversal = call.argument("enableReversal") == null ? true
                    : call.argument("enableReversal");

            if (sessionID == "") {
                Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                        "SessionID parameter missing");
                sendResponse(paramMap);
            } else {
                setSession(sessionID, enableReceiptUi, enableReversal, timeout);
            }
        } else if (call.method.equals("receiptToImage")) {

        }

        else {
            result.notImplemented();
        }
    }

    private void paymentValidation(@NonNull MethodCall call) {

        Log.i("purchase....", nearPay.toString());
        String amountStr = call.argument("amount") != null ? call.argument("amount").toString() : "";
        String customer_reference_number = call.argument("customer_reference_number") != null
                ? call.argument("customer_reference_number").toString()
                : "";
        Boolean enableReceiptUi = call.argument("enableReceiptUi") == null ? true : call.argument("enableReceiptUi");
        String authvalue = call.argument("authvalue") == null ? this.authValueShared
                : call.argument("authvalue").toString();
        String authType = call.argument("authtype") == null ? this.authTypeShared
                : call.argument("authtype").toString();
        boolean isAuthValidated = isAuthInputValidation(authType, authvalue);
        Boolean enableReversal = call.argument("enableReversal");
        String finishTimeout = call.argument("finishTimeout") != null ? call.argument("finishTimeout").toString()
                : timeOutDefault;
        Long timeout = Long.valueOf(finishTimeout);

        // empty value case
        if (amountStr == "") {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Purchase amount parameter missing");
            sendResponse(paramMap);
            return;
        }

        // auth parameter missing case
        if (!isAuthValidated) {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Authentication parameter missing");
            sendResponse(paramMap);
            return;
        }

        Long amount = Long.valueOf(amountStr);
        doPaymentAction(amount, customer_reference_number, enableReceiptUi, enableReversal, authType, authvalue,
                timeout);

    }

    private void doPaymentAction(Long amount, String customerReferenceNumber, Boolean enableReceiptUi,
            Boolean enableReversal, String authType, String inputValue, long finishTimeOut) {

        nearPay.purchase(amount, customerReferenceNumber, enableReceiptUi, enableReversal, finishTimeOut,
                new PurchaseListener() {
                    @Override
                    public void onPurchaseFailed(@NonNull PurchaseFailure purchaseFailure) {
                        if (purchaseFailure instanceof PurchaseFailure.GeneralFailure) {
                            // when there is General error .
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                                    ErrorStatus.general_messsage);
                            sendResponse(paramMap);
                        } else if (purchaseFailure instanceof PurchaseFailure.PurchaseDeclined) {
                            // when the payment declined.
                            String messageResp = ((PurchaseFailure.PurchaseDeclined) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.purchase_declined_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.purchase_declined_code, message);
                            sendResponse(paramMap);
                        } else if (purchaseFailure instanceof PurchaseFailure.PurchaseRejected) {
                            // when the payment rejected.
                            String messageResp = ((PurchaseFailure.PurchaseRejected) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.purchase_rejected_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.purchase_rejected_code, message);
                            sendResponse(paramMap);
                        } else if (purchaseFailure instanceof PurchaseFailure.AuthenticationFailed) {
                            String messageResp = ((PurchaseFailure.AuthenticationFailed) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.authentication_failed_message;
                            if (authType.equalsIgnoreCase(jwtKey)) {
                                nearPay.updateAuthentication(getAuthType(authType, inputValue));
                            }
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                            sendResponse(paramMap);
                        } else if (purchaseFailure instanceof PurchaseFailure.InvalidStatus) {
                            // you can get the status using the following code
                            String messageResp = ((PurchaseFailure.InvalidStatus) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.invalid_status_messsage;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                            sendResponse(paramMap);
                        }
                    }

                    @Override
                    public void onPurchaseApproved(@Nullable List<TransactionReceipt> list) {
                        Log.i("onPurchaseApproved...", "transactionReceipt,,,444,,");
                        List<Map<String, Object>> transactionList = new ArrayList<>();
                        for (TransactionReceipt transReceipt : list) {
                            String jsonStr = ReceiptUtilsKt.toJson(transReceipt);
                            transactionList.add(JSONStringToMap(jsonStr));
                        }
                        Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code, "Payment Success");
                        responseDict.put("list", transactionList);
                        sendResponse(responseDict);

                    }
                });

    }

    private void refundValidation(@NonNull MethodCall call) {
        String amountStr = call.argument("amount") != null ? call.argument("amount").toString() : "";
        String reference_retrieval_number = call.argument("transaction_uuid") != null
                ? call.argument("transaction_uuid").toString()
                : "";
        String customer_reference_number = call.argument("customer_reference_number").toString();
        Boolean enableReceiptUi = call.argument("enableReceiptUi") == null ? true : call.argument("enableReceiptUi");
        String authvalue = call.argument("authvalue") == null ? this.authValueShared
                : call.argument("authvalue").toString();
        String authType = call.argument("authtype") == null ? this.authTypeShared
                : call.argument("authtype").toString();
        Boolean enableReversal = call.argument("enableReversal");
        Boolean enableEditableRefundAmountUi = call.argument("enableEditableRefundAmountUi") == null ? true
                : call.argument("enableEditableRefundAmountUi");
        String finishTimeout = call.argument("finishTimeout") != null ? call.argument("finishTimeout").toString()
                : timeOutDefault;
        Long timeout = Long.valueOf(finishTimeout);
        boolean isAuthValidated = isAuthInputValidation(authType, authvalue);
        String adminPin = call.argument("adminPin") == null ? null : call.argument("adminPin");

        if (amountStr == "") {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Purchase amount parameter missing");
            sendResponse(paramMap);
            return;
        }

        if (reference_retrieval_number == "") {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Transaction UUID parameter missing");
            sendResponse(paramMap);
            return;
        }

        if (!isAuthValidated) {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Authentication parameter missing");
            sendResponse(paramMap);
            return;
        }

        Long amount = Long.valueOf(amountStr);
        doRefundAction(amount, reference_retrieval_number, customer_reference_number, enableReceiptUi, enableReversal,
                enableEditableRefundAmountUi, authType, authvalue, timeout, adminPin);

    }

    private void doRefundAction(Long amount, String transactionReferenceRetrievalNumber, String customerReferenceNumber,
            Boolean enableReceiptUi, boolean enableReversal, Boolean isEnableRefundAmountUi, String authType,
            String authvalue, long finishTimeOut, String adminPin) {
        nearPay.refund(amount, transactionReferenceRetrievalNumber, customerReferenceNumber, enableReceiptUi,
                enableReversal, isEnableRefundAmountUi, finishTimeOut, adminPin, new RefundListener() {
                    @Override
                    public void onRefundFailed(@NonNull RefundFailure refundFailure) {

                        if (refundFailure instanceof RefundFailure.GeneralFailure) {
                            // when there is General error .
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                                    ErrorStatus.general_messsage);
                            sendResponse(paramMap);
                        } else if (refundFailure instanceof RefundFailure.RefundDeclined) {
                            // when the payment declined.
                            String messageResp = ((RefundFailure.RefundDeclined) refundFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.refund_declined_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.refund_declined_code, message);
                            sendResponse(paramMap);
                        } else if (refundFailure instanceof RefundFailure.RefundRejected) {
                            // when the payment rejected.
                            String messageResp = ((RefundFailure.RefundRejected) refundFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.refund_rejected_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.refund_rejected_code, message);
                            sendResponse(paramMap);
                        } else if (refundFailure instanceof RefundFailure.AuthenticationFailed) {
                            String messageResp = ((RefundFailure.AuthenticationFailed) refundFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.authentication_failed_message;
                            if (authType.equalsIgnoreCase(jwtKey)) {
                                Log.d("..call jwt call.1111...", authvalue);
                                nearPay.updateAuthentication(getAuthType(authType, authvalue));
                            }
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                            sendResponse(paramMap);
                        } else if (refundFailure instanceof RefundFailure.InvalidStatus) {
                            // you can get the status using the following code
                            String messageResp = ((RefundFailure.InvalidStatus) refundFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.invalid_status_messsage;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                            sendResponse(paramMap);
                        }
                    }

                    @Override
                    public void onRefundApproved(@Nullable List<TransactionReceipt> list) {
                        List<Map<String, Object>> transactionList = new ArrayList<>();
                        for (TransactionReceipt transReceipt : list) {
                            String jsonStr = ReceiptUtilsKt.toJson(transReceipt);
                            transactionList.add(JSONStringToMap(jsonStr));
                        }
                        Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code, "Refund Success");
                        responseDict.put("list", transactionList);
                        sendResponse(responseDict);
                    }
                });

    }

    private void doReconcileAction(Boolean enableReceiptUi, String authType, String inputValue, long finishTimeOut,
            String adminPin) {
        Log.i("doReconcile....", "doReconcile.......first....");
        nearPay.reconcile(enableReceiptUi, adminPin, finishTimeOut, new ReconcileListener() {
            @Override
            public void onReconcileFinished(@Nullable ReconciliationReceipt reconciliationReceipt) {
                // you can use the object to get the reconciliationReceipt data .
                // write your code here
                // Map<String, Object> responseDict =
                // reconcileGetResponse(reconciliationReceipt, "Successfull Reconcile");
                Map<String, Object> responseDict = JSONStringToMap(ReceiptUtilsKt.toJson(reconciliationReceipt));

                sendResponse(responseDict);
            }

            @Override
            public void onReconcileFailed(@NonNull ReconcileFailure reconcileFailure) {
                if (reconcileFailure instanceof ReconcileFailure.AuthenticationFailed) {
                    // when the Authentication is failed
                    String messageResp = ((ReconcileFailure.AuthenticationFailed) reconcileFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.authentication_failed_message;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                    sendResponse(paramMap);
                    if (authType.equalsIgnoreCase(jwtKey)) {
                        Log.d("..call jwt call.1111...", inputValue);
                        nearPay.updateAuthentication(getAuthType(authType, inputValue));
                    }
                } else if (reconcileFailure instanceof ReconcileFailure.GeneralFailure) {
                    // when there is general error .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                            ErrorStatus.general_messsage);
                    sendResponse(paramMap);
                } else if (reconcileFailure instanceof ReconcileFailure.FailureMessage) {
                    // when there is FailureMessage
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.failure_code,
                            ErrorStatus.failure_messsage);
                    sendResponse(paramMap);
                } else if (reconcileFailure instanceof ReconcileFailure.InvalidStatus) {
                    // you can get the status using following code
                    String messageResp = ((ReconcileFailure.InvalidStatus) reconcileFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.invalid_status_messsage;

                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                    sendResponse(paramMap);
                }
            }
        });
    }

    private void doReverseAction(String transactionUuid, Boolean enableReceiptUi, String authType, String inputValue,
            long finishTimeOut) {
        Log.i("doReverseAction....", "doReverseAction.......first....");
        nearPay.reverse(transactionUuid, enableReceiptUi, finishTimeOut, new ReversalListener() {

            @Override
            public void onReversalFinished(@Nullable List<TransactionReceipt> list) {
                // you can use "transactionReceipt" to get the transactionReceipt data .
                List<Map<String, Object>> transactionList = new ArrayList<>();
                for (TransactionReceipt transReceipt : list) {
                    String jsonStr = ReceiptUtilsKt.toJson(transReceipt);
                    transactionList.add(JSONStringToMap(jsonStr));
                }
                Map<String, Object> responseDict = commonResponse(200, "Payment Success");
                responseDict.put("list", transactionList);
                sendResponse(responseDict);
            }

            @Override
            public void onReversalFailed(@NonNull ReversalFailure reversalFailure) {
                if (reversalFailure instanceof ReversalFailure.AuthenticationFailed) {
                    // when the Authentication is failed
                    String messageResp = ((ReversalFailure.AuthenticationFailed) reversalFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.authentication_failed_message;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                    sendResponse(paramMap);
                    if (authType.equalsIgnoreCase(jwtKey)) {
                        Log.d("..call jwt call.1111...", inputValue);
                        nearPay.updateAuthentication(getAuthType(authType, inputValue));
                    }
                } else if (reversalFailure instanceof ReversalFailure.GeneralFailure) {
                    // when there is general error .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                            ErrorStatus.general_messsage);
                    sendResponse(paramMap);
                } else if (reversalFailure instanceof ReversalFailure.FailureMessage) {
                    // when there is FailureMessage
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.failure_code,
                            ErrorStatus.failure_messsage);
                    sendResponse(paramMap);
                } else if (reversalFailure instanceof ReversalFailure.InvalidStatus) {
                    // you can get the status using following code
                    String messageResp = ((ReversalFailure.InvalidStatus) reversalFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.invalid_status_messsage;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                    sendResponse(paramMap);
                }
            }
        });
    }

    private void doLogoutAction() {
        nearPay.logout(new LogoutListener() {
            @Override
            public void onLogoutCompleted() {
                // write your message here
                Map<String, Object> paramMap = commonResponse(ErrorStatus.success_code, "Logout Successfully");
                sendResponse(paramMap);
            }

            @Override
            public void onLogoutFailed(@NonNull LogoutFailure logoutFailure) {
                if (logoutFailure instanceof LogoutFailure.AlreadyLoggedOut) {
                    // when the user is already logged out
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.logout_already_code,
                            "User already logout");
                    sendResponse(paramMap);
                } else if (logoutFailure instanceof LogoutFailure.GeneralFailure) {
                    // when the error is general error
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                            ErrorStatus.general_messsage);
                    sendResponse(paramMap);
                }
            }
        });
    }

    private void doSetup(String authType, String inputValue) {
        nearPay.setup(new SetupListener() {
            @Override
            public void onSetupCompleted() {
                // when the setup is done successfully
                Map<String, Object> paramMap = commonResponse(ErrorStatus.success_code,
                        "Application setup completed successfully");
                sendResponse(paramMap);
            }

            @Override
            public void onSetupFailed(@NonNull SetupFailure setupFailure) {
                if (setupFailure instanceof SetupFailure.AlreadyInstalled) {
                    // when the payment plugin is already installed .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.already_installed_code,
                            "Plugin Application Already Installed");
                    sendResponse(paramMap);
                } else if (setupFailure instanceof SetupFailure.NotInstalled) {
                    // when the installtion failed .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.not_installed_code,
                            "Plugin Application Installation Failed");
                    sendResponse(paramMap);
                } else if (setupFailure instanceof SetupFailure.AuthenticationFailed) {
                    // when the Authentication Failed.
                    String messageResp = ((SetupFailure.AuthenticationFailed) setupFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.authentication_failed_message;

                    if (authType.equalsIgnoreCase(jwtKey)) {
                        nearPay.updateAuthentication(getAuthType(authType, inputValue));
                        Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                        sendResponse(paramMap);
                    } else {
                        Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                        sendResponse(paramMap);
                    }

                } else if (setupFailure instanceof SetupFailure.InvalidStatus) {
                    // you can get the status using the following code
                    String messageResp = ((SetupFailure.InvalidStatus) setupFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.invalid_status_messsage;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                    sendResponse(paramMap);
                }
            }
        });
    }

    private void setSession(String sessionID, Boolean enableReceiptUi, Boolean enableReversal, Long finishTimeOut) {
        nearPay.session(sessionID, enableReceiptUi, enableReversal, finishTimeOut, new SessionListener() {
            @Override
            public void onSessionClosed(@Nullable Session session) {
                // when the session is closed
                Map<String, Object> responseDict = sessionResponse(session, "Session Closed");
                sendResponse(responseDict);
            }

            @Override
            public void onSessionOpen(@Nullable List<TransactionReceipt> list) {
                // when the session is open , you can get the receipt by using
                // TransactionReceipt
                List<Map<String, Object>> transactionList = new ArrayList<>();
                for (TransactionReceipt transReceipt : list) {
                    String jsonStr = ReceiptUtilsKt.toJson(transReceipt);
                    transactionList.add(JSONStringToMap(jsonStr));
                }
                Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code, "Session Success");
                responseDict.put("list", transactionList);
                sendResponse(responseDict);
            }

            @Override
            public void onSessionFailed(@NonNull SessionFailure sessionFailure) {
                if (sessionFailure instanceof SessionFailure.AuthenticationFailed) {
                    // when the authentication is failed
                    String messageResp = ((SessionFailure.AuthenticationFailed) sessionFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.authentication_failed_message;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                    sendResponse(paramMap);
                    if (authTypeShared.equalsIgnoreCase(jwtKey)) {
                        nearPay.updateAuthentication(getAuthType(authTypeShared, authTypeShared));
                    }

                } else if (sessionFailure instanceof SessionFailure.GeneralFailure) {
                    // when there is general error .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                            ErrorStatus.general_messsage);
                    sendResponse(paramMap);
                } else if (sessionFailure instanceof SessionFailure.FailureMessage) {
                    // when there is FailureMessage
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.failure_code,
                            ErrorStatus.failure_messsage);
                    sendResponse(paramMap);
                } else if (sessionFailure instanceof SessionFailure.InvalidStatus) {
                    // you can get the status using the following code
                    String messageResp = ((SessionFailure.InvalidStatus) sessionFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.invalid_status_messsage;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                    sendResponse(paramMap);
                }
            }
        });
    }

    private static Map<String, Object> sessionResponse(Session session, String message) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("id", session.getId());
        paramMap.put("status", session.getStatus());
        paramMap.put("type", session.getType());
        paramMap.put("client_id", session.getClient_id());
        paramMap.put("amount", session.getAmount());
        paramMap.put("expired_at", session.getExpired_at());
        paramMap.put("reference_id", session.getReference_id());
        paramMap.put("created_at", session.getCreated_at());
        paramMap.put("updated_at", session.getUpdated_at());

        // Transaction response
        Map<String, Object> transaction = new HashMap<>();
        transaction.put("id", session.getTransaction().getId());
        transaction.put("uuid", session.getTransaction().getUuid());
        transaction.put("amount_authorized", session.getTransaction().getAmount_authorized());
        transaction.put("currentcy_code", session.getTransaction().getTransaction_currency_code());
        transaction.put("cardholder_verification_result", session.getTransaction().getCardholder_verification_result());
        transaction.put("lat", session.getTransaction().getLat());
        transaction.put("lon", session.getTransaction().getLon());
        transaction.put("device_id", session.getTransaction().getDevice_id());
        transaction.put("merchant_id", session.getTransaction().getMerchant_id());
        transaction.put("transaction_type", session.getTransaction().getTransaction_type());
        transaction.put("card_scheme_id", session.getTransaction().getCard_scheme_id());
        transaction.put("system_trace_audit_number", session.getTransaction().getSystem_trace_audit_number());
        transaction.put("is_approve", session.getTransaction().is_approved());
        transaction.put("is_reconcilied", session.getTransaction().is_reconcilied());
        transaction.put("is_reversed", session.getTransaction().is_reversed());
        transaction.put("user_id", session.getTransaction().getUser_id());
        transaction.put("customer_reference_number", session.getTransaction().getCustomer_reference_number());
        transaction.put("pos_confirm", session.getTransaction().getPos_confirmed());
        transaction.put("created_at", session.getTransaction().getCreated_at());
        transaction.put("updated_at", session.getTransaction().getUpdated_at());

        // get transaction details
        List<Map<String, Object>> transactionList = new ArrayList<>();
        for (TransactionReceipt transReceipt : session.getTransaction().getReceipts()) {
            String jsonStr = ReceiptUtilsKt.toJson(transReceipt);
            transactionList.add(JSONStringToMap(jsonStr));
        }

        transaction.put("receipts", transactionList);

        // Card Scheme
        LocalizationField cardSchemeTrans = session.getTransaction().getCard_scheme();
        Map<String, Object> cardSchemObject = new HashMap<>();
        cardSchemObject.put("arabic", cardSchemeTrans.getArabic());
        cardSchemObject.put("english", cardSchemeTrans.getEnglish());
        transaction.put("card_scheme", cardSchemObject);

        // Card Scheme
        LocalizationField typeTrans = session.getTransaction().getType();
        Map<String, Object> typeTransObject = new HashMap<>();
        typeTransObject.put("arabic", typeTrans.getArabic());
        typeTransObject.put("english", typeTrans.getEnglish());
        transaction.put("type", typeTransObject);

        // Card Scheme
        LocalizationField versificatioType = session.getTransaction().getVerification_method();
        Map<String, Object> versificationObject = new HashMap<>();
        versificationObject.put("arabic", versificatioType.getArabic());
        versificationObject.put("english", versificatioType.getEnglish());
        transaction.put("verification_method", versificationObject);

        paramMap.put("transaction", transaction);

        paramMap.put("status", ErrorStatus.success_code);
        paramMap.put("message", message);

        return paramMap;
    }

    private void getRecieptImageTrans(TransactionReceipt recipt, int imgwidth, int fontSize) {
        ReceiptUtilsKt.toImage(recipt, this.context, imgwidth, fontSize, (BitmapListener) bitmap -> {
            // bitmap
            Log.i("getTransimg..", bitmap.toString());

        });
    }

    private void getRecieptImageReconcile(ReconciliationReceipt recipt, int imgwidth, int fontSize) {
        ReceiptUtilsKt.toImage(recipt, this.context, imgwidth, fontSize, (BitmapListener) bitmap -> {
            // bitmap
            Log.i("getRecimg..", bitmap.toString());
        });
    }

    private static void sendResponse(Map<String, Object> paramMap) {
        Gson gson = new Gson();
        flutterResult.success(gson.toJson(paramMap));
    }

    private static Map<String, Object> JSONStringToMap(String jsonStr) {
        Map<String, Object> data = new Gson().fromJson(jsonStr, HashMap.class);
        return data;
    }

    private static Map<String, Object> commonResponse(int responseCode, String message) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        return paramMap;
    }
}
