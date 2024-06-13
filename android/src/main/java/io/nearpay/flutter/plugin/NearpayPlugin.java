package io.nearpay.flutter.plugin;

import static java.util.UUID.randomUUID;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.List;
import java.util.Locale;

import android.annotation.SuppressLint;
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
import io.nearpay.sdk.data.models.ReconciliationList;
import io.nearpay.sdk.data.models.Session;
import io.nearpay.sdk.data.models.TransactionBannerList;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.AuthenticationData;
import io.nearpay.sdk.utils.enums.CancelFailure;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.enums.PurchaseFailure;
import io.nearpay.sdk.utils.enums.RefundFailure;
import io.nearpay.sdk.utils.enums.SessionFailure;
import io.nearpay.sdk.utils.enums.StatusCheckError;
import io.nearpay.sdk.utils.enums.TransactionData;
import io.nearpay.sdk.utils.listeners.BitmapListener;
import io.nearpay.sdk.utils.listeners.DismissListener;
import io.nearpay.sdk.utils.listeners.GetReconcileListener;
import io.nearpay.sdk.utils.listeners.GetReconciliationPageListener;
import io.nearpay.sdk.utils.listeners.GetTransactionListener;
import io.nearpay.sdk.utils.listeners.GetTransactionPageListener;
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
import java.util.UUID;

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
    // call map is used to map a response to a method caller, to avoid sending
    // a response more than once
    private static Map<String, Result> callMap = new HashMap<String, Result>();

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "nearpay");
        channel.setMethodCallHandler(this);
        this.context = flutterPluginBinding.getApplicationContext();
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
    @SuppressLint("NewApi")
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        flutterResult = result;
        String callUUID = UUID.randomUUID().toString();
        callMap.put(callUUID, result);

        if (call.method.equals("purchase")) {
            if (nearPay != null) {
                paymentValidation(call, callUUID);
            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap, callUUID);
            }
        } else if (call.method.equals("refund")) {
            if (nearPay != null) {
                refundValidation(call, callUUID);
            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap, callUUID);
            }
        } else if (call.method.equals("dismiss")) {
            if (nearPay != null) {
                dismiss(callUUID);
            } else {
                Log.i("dismiss....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap, callUUID);
            }
        }else if (call.method.equals("reconcile")) {
            if (nearPay != null) {
                Boolean isEnableUI = call.argument("isEnableUI") == null ? true : call.argument("isEnableUI");
                String authvalue = call.argument("authvalue") == null ? this.authValueShared
                        : call.argument("authvalue").toString();
                String authType = call.argument("authtype") == null ? this.authTypeShared
                        : call.argument("authtype").toString();
                String finishTimeout = call.argument("finishTimeout") != null
                        ? call.argument("finishTimeout").toString()
                        : timeOutDefault;
                String adminPin = call.argument("adminPin") == null ? null : call.argument("adminPin");
                Boolean enableUiDismiss = call.argument("isUiDismissible") != null
                        ? (Boolean) call.argument("isUiDismissible")
                        : true;// [optional] it will allow you to control dismissing the UI
                UUID jobId = call.argument("reconcileId") == null ? randomUUID()
                        : UUID.fromString(call.argument("reconcileId").toString());

                Long timeout = Long.valueOf(finishTimeout);
                boolean isAuthValidated = isAuthInputValidation(authType, authvalue);

                if (!isAuthValidated) {
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                            "Authentication parameter missing");
                    sendResponse(paramMap, callUUID);
                } else {
                    doReconcileAction(callUUID, isEnableUI, authType, authvalue, timeout, adminPin, enableUiDismiss,
                            jobId);
                }

            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap, callUUID);
            }
        } else if (call.method.equals("reverse")) {
            if (nearPay != null) {
                String transactionUuid = call.argument("transaction_uuid") != null
                        ? call.argument("transaction_uuid").toString()
                        : "";
                Boolean isEnableUI = call.argument("isEnableUI") == null ? true : call.argument("isEnableUI");
                String authvalue = call.argument("authvalue") == null ? this.authValueShared
                        : call.argument("authvalue").toString();
                String authType = call.argument("authtype") == null ? this.authTypeShared
                        : call.argument("authtype").toString();
                String finishTimeout = call.argument("finishTimeout") != null
                        ? call.argument("finishTimeout").toString()
                        : timeOutDefault;
                Long timeout = Long.valueOf(finishTimeout);
                Boolean enableUiDismiss = call.argument("isUiDismissible") != null
                        ? (Boolean) call.argument("isUiDismissible")
                        : true;// [optional] it will allow you to control dismissing the UI
                boolean isAuthValidated = isAuthInputValidation(authType, authvalue);

                if (transactionUuid == "") {
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                            "Transaction UUID parameter missing");
                    sendResponse(paramMap, callUUID);
                } else if (!isAuthValidated) {
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                            "Authentication parameter missing");
                    sendResponse(paramMap, callUUID);
                } else {
                    doReverseAction(callUUID, transactionUuid, isEnableUI, authType, authvalue, timeout,
                            enableUiDismiss);
                }

            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap, callUUID);
            }
        } else if (call.method.equals("logout")) {
            if (nearPay != null) {
                doLogoutAction(callUUID);
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
                    sendResponse(paramMap, callUUID);
                } else {
                    doSetup(callUUID, authType, authvalue);
                }
            } else {
                Log.i("purchase....", "initialise nil");
                Map<String, Object> paramMap = commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sendResponse(paramMap, callUUID);
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
                sendResponse(paramMap, callUUID);
            } else {
                // nearPay = new NearPay.Builder(this.context, getAuthType(authType, authvalue),
                // locale, env);
                nearPay = new NearPay.Builder()
                        .context(this.context)
                        .authenticationData(getAuthType(authType, authvalue))
                        .environment(env)
                        .locale(locale)
                        .build();
                Map<String, Object> paramMap = commonResponse(ErrorStatus.success_code, "NearPay initialized");
                sendResponse(paramMap, callUUID);
            }
        } else if (call.method.equals("session")) {
            String sessionID = call.argument("sessionID") == null ? "" : call.argument("sessionID").toString();
            String finishTimeout = call.argument("finishTimeout") != null ? call.argument("finishTimeout").toString()
                    : timeOutDefault;
            Long timeout = Long.valueOf(finishTimeout);
            Boolean isEnableUI = call.argument("isEnableUI") == null ? true : call.argument("isEnableUI");
            Boolean isEnableReverse = call.argument("isEnableReversal") == null ? true
                    : call.argument("isEnableReversal");
            Boolean enableUiDismiss = call.argument("isUiDismissible") != null
                    ? (Boolean) call.argument("isUiDismissible")
                    : true;// [optional] it will allow you to control dismissing the UI

            if (sessionID == "") {
                Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                        "SessionID parameter missing");
                sendResponse(paramMap, callUUID);
            } else {
                setSession(callUUID, sessionID, isEnableUI, isEnableReverse, timeout, enableUiDismiss);
            }
        } else if (call.method.equals("receiptToImage")) {
            // String transactionJson = call.argument("receipt") != null
            // ? (String) call.argument("receipt")
            // : "";// [optional] it will allow you to control dismissing the UI
            //
            // if(transactionJson.equals("")){
            // sendResponse(commonResponse(ErrorStatus.general_failure_code, "receipt must
            // be provided"), callUUID);
            // }
            //
            // new Gson().fromJson(transactionJson, TransactionReceipt.class);

        } else if (call.method.equals("updateAuthentication")) {
            String authType = call.argument("authType").toString();
            String inputValue = call.argument("authValue").toString();
            nearPay.updateAuthentication(getAuthType(authType, inputValue));
            sendResponse(new HashMap<>(), callUUID);
        } else if (call.method.equals("getTransactionsList")) {
            int page = call.argument("page") == null ? 1 : (int) call.argument("page");
            int limit = call.argument("limit") == null ? 30 : (int) call.argument("limit");
            String isoTimeFrom = call.argument("startDate") == null ? null : (String) call.argument("startDate");
            String isoTimeTo = call.argument("endDate") == null ? null : (String) call.argument("endDate");

            LocalDateTime from = isoTimeTo != null ? LocalDateTime.parse(isoTimeFrom, DateTimeFormatter.ISO_DATE_TIME)
                    : null;
            LocalDateTime to = isoTimeTo != null ? LocalDateTime.parse(isoTimeTo, DateTimeFormatter.ISO_DATE_TIME)
                    : null;
            String customerReferenceNumber = call.argument("customerReferenceNumber") == null ? null : (String) call.argument("customerReferenceNumber");
            nearPay.getTransactionListPage(page, limit, from, to, customerReferenceNumber, new GetTransactionPageListener() {
                @Override
                public void onSuccess(@Nullable TransactionBannerList transactionBannerList) {
                    Map res = commonResponse(ErrorStatus.success_code, "");
                    res.put("list", classToMap(transactionBannerList));
                    sendResponse(res, callUUID);
                }

                @Override
                public void onFailure(@NonNull GetDataFailure getDataFailure) {
                    sendResponse(commonResponse(ErrorStatus.general_failure_code, ""), callUUID);
                }
            });
        } else if (call.method.equals("getTransaction")) {
            // String adminPin = call.argument("adminPin") == null ? null :
            // call.argument("adminPin").toString();
            String transactionUUID = call.argument("transactionUuid") == null ? null
                    : call.argument("transactionUuid").toString();
            boolean enableReceiptUi = call.argument("enableReceiptUi") != null && (boolean) call.argument("enableReceiptUi");
            long finishTimeOut = call.argument("finishTimeOut") == null ? 30
                    : (long)call.argument("finishTimeOut");
            nearPay.getTransactionByUuid(transactionUUID, enableReceiptUi,  finishTimeOut, new GetTransactionListener() {
                @Override
                public void onSuccess(@NonNull TransactionData transactionData) {
                    // Map res = commonResponse(ErrorStatus.success_code, "");
                    // res.put("list", classToMap(list));
                    // sendResponse(res, callUUID);
                    List<Map<String, Object>> transactionList = new ArrayList<>();
                    for (TransactionReceipt transRecipt : transactionData.getReceipts()) {
                        Map<String, Object> responseDict = getTransactionGetResponse(transRecipt,
                                "");
                        transactionList.add(responseDict);
                    }
                    Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code, "");
                    responseDict.put("list", transactionList);
                    sendResponse(responseDict, callUUID);

                }

                @Override
                public void onFailure(@NonNull GetDataFailure getDataFailure) {
                    sendResponse(commonResponse(ErrorStatus.general_failure_code, ""), callUUID);
                }

                // @Override
                // public void onSuccess(@Nullable List<TransactionReceipt> list) {
                // Map res = commonResponse(ErrorStatus.success_code, "");
                // res.put("list", classToMap(list));
                // sendResponse(res, callUUID);
                // }

                // @Override
                // public void onFailure(@NonNull GetTransactionFailure getTransactionFailure) {
                // sendResponse(commonResponse(ErrorStatus.general_failure_code, ""), callUUID);
                // }
            });
        } else if (call.method.equals("getReconciliationsList")) {
            int page = call.argument("page") == null ? 1 : (int) call.argument("page");
            int limit = call.argument("limit") == null ? 30 : (int) call.argument("limit");
            String isoTimeFrom = call.argument("startDate") == null ? null : (String) call.argument("startDate");
            String isoTimeTo = call.argument("endDate") == null ? null : (String) call.argument("endDate");

            LocalDateTime from = isoTimeTo != null ? LocalDateTime.parse(isoTimeFrom, DateTimeFormatter.ISO_DATE_TIME)
                    : null;
            LocalDateTime to = isoTimeTo != null ? LocalDateTime.parse(isoTimeTo, DateTimeFormatter.ISO_DATE_TIME)
                    : null;

            // String adminPin = call.argument("adminPin") == null ? null :
            // call.argument("adminPin").toString();

            nearPay.getReconciliationListPage(page, limit, from, to, new GetReconciliationPageListener() {
                @Override
                public void onSuccess(@Nullable ReconciliationList reconciliationList) {
                    Map res = commonResponse(ErrorStatus.success_code, "");
                    res.put("list", classToMap(reconciliationList));
                    sendResponse(res, callUUID);

                }

                @Override
                public void onFailure(@NonNull GetDataFailure getDataFailure) {
                    sendResponse(commonResponse(ErrorStatus.general_failure_code, ""), callUUID);
                }
            });
        } else if (call.method.equals("getReconciliation")) {
            // String adminPin = call.argument("adminPin") == null ? null :
            // call.argument("adminPin").toString();
            String reconciliationUUID = call.argument("reconciliationUuid") == null ? null
                    : call.argument("reconciliationUuid").toString();
            boolean enableReceiptUi = call.argument("enableReceiptUi") != null && (boolean) call.argument("enableReceiptUi");
            long finishTimeOut = call.argument("finishTimeOut") == null ? 30
                    : (long)call.argument("finishTimeOut");
            nearPay.getReconciliationByUuid(reconciliationUUID, enableReceiptUi, finishTimeOut, new GetReconcileListener() {
                @Override
                public void onSuccess(@Nullable ReconciliationReceipt reconciliationReceipt) {
                    Map res = commonResponse(ErrorStatus.success_code, "");
                    res.put("list", classToMap(reconciliationReceipt));
                    sendResponse(res, callUUID);

                }

                @Override
                public void onFailure(@NonNull GetDataFailure failure) {
                    sendResponse(commonResponse(ErrorStatus.general_failure_code, ""), callUUID);

                }
            });
        } else if (call.method.equals("close")) {
          nearPay.close();
        }else {
            result.notImplemented();
        }
    }

    private void paymentValidation(@NonNull MethodCall call, String callUUID) {
        Log.i("purchase....", nearPay.toString());
        String amountStr = call.argument("amount") != null ? call.argument("amount").toString() : "";
        String customer_reference_number = call.argument("customer_reference_number") != null
                ? call.argument("customer_reference_number").toString()
                : "";
        Boolean isEnableUI = call.argument("isEnableUI") == null ? true : call.argument("isEnableUI");
        String authvalue = call.argument("authvalue") == null ? this.authValueShared
                : call.argument("authvalue").toString();
        String authType = call.argument("authtype") == null ? this.authTypeShared
                : call.argument("authtype").toString();
        UUID jobId = call.argument("transactionId") == null ? randomUUID()
                : UUID.fromString(call.argument("transactionId").toString());
        boolean isAuthValidated = isAuthInputValidation(authType, authvalue);
        Boolean isEnableReverse = call.argument("isEnableReversal");
        String finishTimeout = call.argument("finishTimeout") != null ? call.argument("finishTimeout").toString()
                : timeOutDefault;
        Boolean enableUiDismiss = call.argument("isUiDismissible") != null ? (Boolean) call.argument("isUiDismissible")
                : true;// [optional] it will allow you to control dismissing the UI

        Long timeout = Long.valueOf(finishTimeout);
        if (amountStr == "") {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Purchase amount parameter missing");
            sendResponse(paramMap, callUUID);
        } else if (!isAuthValidated) {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Authentication parameter missing");
            sendResponse(paramMap, callUUID);
        } else {
            Long amount = Long.valueOf(amountStr);
            doPaymentAction(callUUID, amount, customer_reference_number, isEnableUI, isEnableReverse, authType,
                    authvalue,
                    timeout, jobId, enableUiDismiss);

        }
    }

    private void doPaymentAction(String callUUID, Long amount, String customerReferenceNumber, Boolean enableReceiptUi,
            Boolean enableReversal, String authType, String inputValue, long finishTimeOut, UUID jobId,
            Boolean isUiDismissible) {

        nearPay.purchase(amount, customerReferenceNumber, enableReceiptUi, enableReversal, finishTimeOut,
                jobId, isUiDismissible, new PurchaseListener() {
                    @Override
                    public void onPurchaseFailed(@NonNull PurchaseFailure purchaseFailure) {

                        if (purchaseFailure instanceof PurchaseFailure.GeneralFailure) {
                            // when there is General error .
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                                    ErrorStatus.general_messsage);
                            sendResponse(paramMap, callUUID);
                        } else if (purchaseFailure instanceof PurchaseFailure.PurchaseDeclined) {
                            // when the payment declined.
                            String messageResp = ((PurchaseFailure.PurchaseDeclined) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.purchase_declined_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.purchase_declined_code, message);
                            sendResponse(paramMap, callUUID);
                        } else if (purchaseFailure instanceof PurchaseFailure.PurchaseRejected) {
                            // when the payment rejected.
                            String messageResp = ((PurchaseFailure.PurchaseRejected) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.purchase_rejected_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.purchase_rejected_code, message);
                            sendResponse(paramMap, callUUID);
                        } else if (purchaseFailure instanceof PurchaseFailure.AuthenticationFailed) {
                            String messageResp = ((PurchaseFailure.AuthenticationFailed) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.authentication_failed_message;
                            if (authType.equalsIgnoreCase(jwtKey)) {
                                nearPay.updateAuthentication(getAuthType(authType, inputValue));
                            }
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                            sendResponse(paramMap, callUUID);
                        } else if (purchaseFailure instanceof PurchaseFailure.InvalidStatus) {
                            // you can get the status using the following code
                            String messageResp = ((PurchaseFailure.InvalidStatus) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.invalid_status_messsage;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                            sendResponse(paramMap, callUUID);
                        }
                    }

                    @Override
                    public void onPurchaseApproved(@NonNull TransactionData transactionData) {
                        Log.i("onPurchaseApproved", "transactionReceipt,,,444,,");
                        List<Map<String, Object>> transactionList = new ArrayList<>();
                        for (TransactionReceipt transRecipt : transactionData.getReceipts()) {
                            Map<String, Object> responseDict = getTransactionGetResponse(transRecipt,
                                    "Refund Successfull");
                            transactionList.add(responseDict);
                        }
                        Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code, "Payment Success");
                        responseDict.put("list", transactionList);
                        sendResponse(responseDict, callUUID);

                    }

                    // @Override
                    // public void onPurchaseApproved(@Nullable List<TransactionReceipt> list) {
                    // Log.i("onPurchaseApproved", "transactionReceipt,,,444,,");
                    // List<Map<String, Object>> transactionList = new ArrayList<>();
                    // for (TransactionReceipt transRecipt : list) {
                    // Map<String, Object> responseDict = getTransactionGetResponse(transRecipt,
                    // "Refund Successfull");
                    // transactionList.add(responseDict);
                    // }
                    // Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code,
                    // "Payment Success");
                    // responseDict.put("list", transactionList);
                    // sendResponse(responseDict, callUUID);
                    //
                    // }
                });

    }

    private void refundValidation(@NonNull MethodCall call, String callUUID) {
        String amountStr = call.argument("amount") != null ? call.argument("amount").toString() : "";
        String originalTransactionUUID = call.argument("transaction_uuid") != null
                ? call.argument("transaction_uuid").toString()
                : "";
        String customer_reference_number = call.argument("customer_reference_number").toString();
        Boolean isEnableUI = call.argument("isEnableUI") == null ? true : call.argument("isEnableUI");
        String authvalue = call.argument("authvalue") == null ? this.authValueShared
                : call.argument("authvalue").toString();
        String authType = call.argument("authtype") == null ? this.authTypeShared
                : call.argument("authtype").toString();
        UUID jobId = call.argument("transactionId") == null ? randomUUID()
                : UUID.fromString(call.argument("transactionId").toString());
        Boolean isEnableReverse = call.argument("isEnableReversal");
        Boolean isEditableReversalUI = call.argument("isEditableReversalUI") == null ? true
                : call.argument("isEditableReversalUI");
        String finishTimeout = call.argument("finishTimeout") != null ? call.argument("finishTimeout").toString()
                : timeOutDefault;
        Long timeout = Long.valueOf(finishTimeout);
        boolean isAuthValidated = isAuthInputValidation(authType, authvalue);
        String adminPin = call.argument("adminPin") == null ? null : call.argument("adminPin");
        Boolean enableUiDismiss = call.argument("isUiDismissible") != null ? (Boolean) call.argument("isUiDismissible")
                : true;// [optional] it will allow you to control dismissing the UI

        if (amountStr == "") {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Purchase amount parameter missing");
            sendResponse(paramMap, callUUID);
        } else if (originalTransactionUUID == "") {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Transaction UUID parameter missing");
            sendResponse(paramMap, callUUID);
        } else if (!isAuthValidated) {
            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_argument_code,
                    "Authentication parameter missing");
            sendResponse(paramMap, callUUID);
        } else {
            Long amount = Long.valueOf(amountStr);
            doRefundAction(callUUID, amount, originalTransactionUUID, customer_reference_number, isEnableUI,
                    isEnableReverse,
                    isEditableReversalUI, authType, authvalue, timeout, adminPin, jobId, enableUiDismiss);
        }
    }

    private void doRefundAction(String callUUID, Long amount, String originalTrasnsactionUuid,
            String customerReferenceNumber,
            Boolean enableReceiptUi, boolean isEnableReversal, Boolean isEnableRefundAmountUi, String authType,
            String authvalue, long finishTimeOut, String adminPin, UUID jobId, Boolean isUiDismissible) {
        nearPay.refund(amount, originalTrasnsactionUuid, customerReferenceNumber, enableReceiptUi,
                isEnableReversal, isEnableRefundAmountUi, finishTimeOut, jobId, adminPin, isUiDismissible,
                new RefundListener() {
                    @Override
                    public void onRefundFailed(@NonNull RefundFailure refundFailure) {

                        if (refundFailure instanceof RefundFailure.GeneralFailure) {
                            // when there is General error .
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                                    ErrorStatus.general_messsage);
                            sendResponse(paramMap, callUUID);
                        } else if (refundFailure instanceof RefundFailure.RefundDeclined) {
                            // when the payment declined.
                            String messageResp = ((RefundFailure.RefundDeclined) refundFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.refund_declined_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.refund_declined_code, message);
                            sendResponse(paramMap, callUUID);
                        } else if (refundFailure instanceof RefundFailure.RefundRejected) {
                            // when the payment rejected.
                            String messageResp = ((RefundFailure.RefundRejected) refundFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.refund_rejected_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.refund_rejected_code, message);
                            sendResponse(paramMap, callUUID);
                        } else if (refundFailure instanceof RefundFailure.AuthenticationFailed) {
                            String messageResp = ((RefundFailure.AuthenticationFailed) refundFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.authentication_failed_message;
                            if (authType.equalsIgnoreCase(jwtKey)) {
                                Log.d("..call jwt call.1111...", authvalue);
                                nearPay.updateAuthentication(getAuthType(authType, authvalue));
                            }
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                            sendResponse(paramMap, callUUID);
                        } else if (refundFailure instanceof RefundFailure.InvalidStatus) {
                            // you can get the status using the following code
                            String messageResp = ((RefundFailure.InvalidStatus) refundFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.invalid_status_messsage;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                            sendResponse(paramMap, callUUID);
                        }
                    }

                    @Override
                    public void onRefundApproved(@NonNull TransactionData transactionData) {
                        List<Map<String, Object>> transactionList = new ArrayList<>();
                        for (TransactionReceipt transRecipt : transactionData.getReceipts()) {
                            Map<String, Object> responseDict = getTransactionGetResponse(transRecipt,
                                    "Refund Successfull");
                            transactionList.add(responseDict);
                        }
                        Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code, "Refund Success");
                        responseDict.put("list", transactionList);
                        sendResponse(responseDict, callUUID);

                    }

                    // @Override
                    // public void onRefundApproved(@Nullable List<TransactionReceipt> list) {
                    // List<Map<String, Object>> transactionList = new ArrayList<>();
                    // for (TransactionReceipt transRecipt : list) {
                    // Map<String, Object> responseDict = getTransactionGetResponse(transRecipt,
                    // "Refund Successfull");
                    // transactionList.add(responseDict);
                    // }
                    // Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code,
                    // "Refund Success");
                    // responseDict.put("list", transactionList);
                    // sendResponse(responseDict, callUUID);
                    // }
                });

    }

    private static void sendResponse(Map<String, Object> paramMap, String callUUID) {
        Gson gson = new Gson();
        try {
            callMap.get(callUUID).success(gson.toJson(paramMap));
        } catch (Exception e) {

        }
        // flutterResult.success(gson.toJson(paramMap));
    }

    private static Map<String, Object> commonResponse(int responseCode, String message) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        return paramMap;
    }

    private static Map<String, Object> getTransactionGetResponse(TransactionReceipt transactionReceipt,
            String message) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("udid", transactionReceipt.getTransaction_uuid());
        paramMap.put("start_date", transactionReceipt.getStart_date());
        paramMap.put("start_time", transactionReceipt.getStart_time());
        // paramMap.put("bank_id",transactionReceipt.getBank_id());
        paramMap.put("tid", transactionReceipt.getTid());
        paramMap.put("system_trace_audit_number", transactionReceipt.getSystem_trace_audit_number());
        paramMap.put("pos_software_version_number", transactionReceipt.getPos_software_version_number());
        paramMap.put("retrieval_reference_number", transactionReceipt.getRetrieval_reference_number());
        paramMap.put("pan", transactionReceipt.getPan());
        paramMap.put("card_expiration", transactionReceipt.getCard_expiration());
        paramMap.put("is_approved", transactionReceipt.is_approved());
        paramMap.put("is_refunded", transactionReceipt.is_refunded());
        paramMap.put("end_date", transactionReceipt.getEnd_date());
        paramMap.put("end_time", transactionReceipt.getEnd_time());

        // Add Merchant Details
        Merchant merchant = transactionReceipt.getMerchant();
        LocalizationField addresss = merchant.getAddress();
        LocalizationField name = merchant.getName();
        Map<String, Object> merchantData = new HashMap<>();
        merchantData.put("id", merchant.getId());
        merchantData.put("category_code", merchant.getCategory_code());

        Map<String, Object> merchantName = new HashMap<>();
        merchantName.put("arabic", name.getArabic());
        merchantName.put("english", name.getEnglish());
        merchantData.put("name", merchantName);

        Map<String, Object> merchantAddress = new HashMap<>();
        merchantAddress.put("arabic", addresss.getArabic());
        merchantAddress.put("english", addresss.getEnglish());
        merchantData.put("address", merchantAddress);
        paramMap.put("merchant", merchantData);

        // Add Scheme Details
        NameField scheme = transactionReceipt.getCard_scheme();
        LocalizationField schemeName = scheme.getName();
        Map<String, Object> schemeData = new HashMap<>();
        Map<String, Object> schemeNameData = new HashMap<>();
        schemeNameData.put("arabic", schemeName.getArabic());
        schemeNameData.put("english", schemeName.getEnglish());
        schemeData.put("id", scheme.getId());
        schemeData.put("name", schemeNameData);
        paramMap.put("scheme", schemeData);

        // Add Trasaction type Details
        NameField trancation = transactionReceipt.getTransaction_type();
        LocalizationField trasactionName = trancation.getName();
        Map<String, Object> transactionData = new HashMap<>();
        Map<String, Object> transactionNameData = new HashMap<>();
        transactionNameData.put("arabic", trasactionName.getArabic());
        transactionNameData.put("english", trasactionName.getEnglish());
        transactionData.put("id", trancation.getId());
        transactionData.put("name", trasactionName);
        paramMap.put("transaction_type", transactionData);

        // Add Amount Authorised Details
        LabelField amountAuth = transactionReceipt.getAmount_authorized();
        LocalizationField amountLabel = amountAuth.getLabel();
        Map<String, Object> amountAuthData = new HashMap<>();
        Map<String, Object> amountAuthNameData = new HashMap<>();
        amountAuthNameData.put("arabic", amountLabel.getArabic());
        amountAuthNameData.put("english", amountLabel.getEnglish());
        amountAuthData.put("name", amountAuthNameData);
        amountAuthData.put("value", amountAuth.getValue());
        paramMap.put("amount_authorized", amountAuthData);

        // Add Amount Other Details
        LabelField amountOther = transactionReceipt.getAmount_authorized();
        LocalizationField amountOtherLabel = amountOther.getLabel();
        Map<String, Object> amountOtherAuthData = new HashMap<>();
        Map<String, Object> amountOtherNameData = new HashMap<>();
        amountOtherNameData.put("arabic", amountOtherLabel.getArabic());
        amountOtherNameData.put("english", amountOtherLabel.getEnglish());
        amountOtherAuthData.put("name", amountOtherNameData);
        amountOtherAuthData.put("value", amountOther.getValue());
        paramMap.put("amount_other", amountOtherAuthData);

        // Add Currency
        LocalizationField currencyLabel = transactionReceipt.getCurrency();
        Map<String, Object> currencyData = new HashMap<>();
        currencyData.put("arabic", currencyLabel.getArabic());
        currencyData.put("english", currencyLabel.getEnglish());
        paramMap.put("currency", currencyData);

        // Add Status Message
        LocalizationField statusMessage = transactionReceipt.getStatus_message();
        Map<String, Object> statusMessageData = new HashMap<>();
        statusMessageData.put("arabic", statusMessage.getArabic());
        statusMessageData.put("english", statusMessage.getEnglish());
        paramMap.put("status_message", statusMessageData);

        // Add Status Message
        LabelField approvalCode = transactionReceipt.getApproval_code();
        if (approvalCode != null) {
            LocalizationField approvalLabel = approvalCode.getLabel();
            Map<String, Object> approvalCodeData = new HashMap<>();
            Map<String, Object> approvalCodeNameData = new HashMap<>();
            approvalCodeNameData.put("arabic", approvalLabel.getArabic());
            approvalCodeNameData.put("english", approvalLabel.getEnglish());
            approvalCodeData.put("value", approvalCode.getValue());
            approvalCodeData.put("label", approvalCodeNameData);
            paramMap.put("approval_code", approvalCodeData);
        }

        // Add Verification Method
        LocalizationField verificationMethod = transactionReceipt.getVerification_method();
        Map<String, Object> verificationMethodData = new HashMap<>();
        verificationMethodData.put("arabic", verificationMethod.getArabic());
        verificationMethodData.put("english", verificationMethod.getEnglish());
        paramMap.put("verification_method", verificationMethodData);

        // Recipent Inline one
        Map<String, Object> recipentInlineone = new HashMap<>();
        recipentInlineone.put("arabic", transactionReceipt.getReceipt_line_one().getArabic());
        recipentInlineone.put("english", transactionReceipt.getReceipt_line_one().getEnglish());
        paramMap.put("receipt_line_one", recipentInlineone);

        // Recipent Inline one
        Map<String, Object> recipentInlineTwo = new HashMap<>();
        recipentInlineTwo.put("arabic", transactionReceipt.getReceipt_line_two().getArabic());
        recipentInlineTwo.put("english", transactionReceipt.getReceipt_line_two().getEnglish());
        paramMap.put("receipt_line_two", recipentInlineTwo);

        // Recipent Thanks Message
        Map<String, Object> thanksMessage = new HashMap<>();
        thanksMessage.put("arabic", transactionReceipt.getThanks_message().getArabic());
        thanksMessage.put("english", transactionReceipt.getThanks_message().getEnglish());
        paramMap.put("thanks_message", thanksMessage);

        // Recipent Save Message
        Map<String, Object> saveMessage = new HashMap<>();
        saveMessage.put("arabic", transactionReceipt.getSave_receipt_message().getArabic());
        saveMessage.put("english", transactionReceipt.getSave_receipt_message().getEnglish());
        paramMap.put("save_receipt_message", saveMessage);

        paramMap.put("entry_mode", transactionReceipt.getEntry_mode());
        paramMap.put("action_code", transactionReceipt.getAction_code());
        paramMap.put("terminal_verification_result", transactionReceipt.getTerminal_verification_result());
        paramMap.put("application_identifier", transactionReceipt.getApplication_identifier());
        paramMap.put("transaction_state_information", transactionReceipt.getTransaction_state_information());
        paramMap.put("cardholader_verfication_result", transactionReceipt.getCardholader_verfication_result());
        paramMap.put("cryptogram_information_data", transactionReceipt.getCryptogram_information_data());
        paramMap.put("application_cryptogram", transactionReceipt.getApplication_cryptogram());
        paramMap.put("kernel_id", transactionReceipt.getKernel_id());
        paramMap.put("payment_account_reference", transactionReceipt.getPayment_account_reference());
        paramMap.put("pan_suffix", transactionReceipt.getPan_suffix());
        paramMap.put("qr_code", transactionReceipt.getQr_code());
        return paramMap;
    }

    private void doReconcileAction(String callUUID, Boolean enableReceiptUi, String authType, String inputValue,
            long finishTimeOut,
            String adminPin, Boolean isUiDismissible, UUID jobId) {
        Log.i("doReconcile....", "doReconcile.......first....");
        nearPay.reconcile(jobId, enableReceiptUi, adminPin, finishTimeOut, isUiDismissible, new ReconcileListener() {
            @Override
            public void onReconcileFinished(@Nullable ReconciliationReceipt reconciliationReceipt) {
                // you can use the object to get the reconciliationReceipt data .
                // write your code here
                Map<String, Object> responseDict = reconcileGetResponse(reconciliationReceipt, "Successfull Reconcile");
                sendResponse(responseDict, callUUID);
            }

            @Override
            public void onReconcileFailed(@NonNull ReconcileFailure reconcileFailure) {
                if (reconcileFailure instanceof ReconcileFailure.AuthenticationFailed) {
                    // when the Authentication is failed
                    String messageResp = ((ReconcileFailure.AuthenticationFailed) reconcileFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.authentication_failed_message;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                    sendResponse(paramMap, callUUID);
                    if (authType.equalsIgnoreCase(jwtKey)) {
                        Log.d("..call jwt call.1111...", inputValue);
                        nearPay.updateAuthentication(getAuthType(authType, inputValue));
                    }
                } else if (reconcileFailure instanceof ReconcileFailure.GeneralFailure) {
                    // when there is general error .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                            ErrorStatus.general_messsage);
                    sendResponse(paramMap, callUUID);
                } else if (reconcileFailure instanceof ReconcileFailure.FailureMessage) {
                    // when there is FailureMessage
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.failure_code,
                            ErrorStatus.failure_messsage);
                    sendResponse(paramMap, callUUID);
                } else if (reconcileFailure instanceof ReconcileFailure.InvalidStatus) {
                    // you can get the status using following code
                    String messageResp = ((ReconcileFailure.InvalidStatus) reconcileFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.invalid_status_messsage;

                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                    sendResponse(paramMap, callUUID);
                }
            }
        });
    }

    private static Map<String, Object> reconcileGetResponse(ReconciliationReceipt reconcileReceipt, String message) {
        Map<String, Object> paramMap = new HashMap<>();
        // paramMap.put("udid",reconcileReceipt.getUuid());
        paramMap.put("id", reconcileReceipt.getId());
        paramMap.put("date", reconcileReceipt.getDate());
        paramMap.put("time", reconcileReceipt.getTime());

        // Add blance Details
        LabelField balanceRec = reconcileReceipt.is_balanced();
        LocalizationField labelData = balanceRec.getLabel();
        Map<String, Object> merchantData = new HashMap<>();
        Map<String, Object> balanceData = new HashMap<>();
        merchantData.put("arabic", labelData.getArabic());
        merchantData.put("english", labelData.getEnglish());
        balanceData.put("label", merchantData);
        balanceData.put("value", balanceRec.getValue());
        paramMap.put("balanced", balanceData);

        // Add details Details
        ReconciliationDetails details = reconcileReceipt.getDetails();
        ReconciliationLabelField totalLabel = details.getTotal();
        Map<String, Object> outterDict = new HashMap<>();
        Map<String, Object> innerDict = new HashMap<>();
        Map<String, Object> totalLabelDict = new HashMap<>();
        totalLabelDict.put("arabic", totalLabel.getLabel().getArabic());
        totalLabelDict.put("english", totalLabel.getLabel().getEnglish());
        innerDict.put("label", totalLabelDict);
        innerDict.put("count", totalLabel.getCount());
        innerDict.put("total", totalLabel.getTotal());
        outterDict.put("total", innerDict);

        ReconciliationLabelField refundData = details.getRefund();
        Map<String, Object> innerDictrefund = new HashMap<>();
        Map<String, Object> totalLabelDictrefund = new HashMap<>();
        totalLabelDictrefund.put("arabic", refundData.getLabel().getArabic());
        totalLabelDictrefund.put("english", refundData.getLabel().getEnglish());
        innerDictrefund.put("label", totalLabelDictrefund);
        innerDictrefund.put("count", refundData.getCount());
        innerDictrefund.put("total", refundData.getTotal());
        outterDict.put("refund", innerDictrefund);

        ReconciliationLabelField purchaseData = details.getPurchase();
        Map<String, Object> innerDictPurchase = new HashMap<>();
        Map<String, Object> totalLabelDictPurchase = new HashMap<>();
        totalLabelDictPurchase.put("arabic", purchaseData.getLabel().getArabic());
        totalLabelDictPurchase.put("english", purchaseData.getLabel().getEnglish());
        innerDictPurchase.put("label", totalLabelDictPurchase);
        innerDictPurchase.put("count", purchaseData.getCount());
        innerDictPurchase.put("total", purchaseData.getTotal());
        outterDict.put("purchase", innerDictPurchase);

        ReconciliationLabelField refRevData = details.getRefund_reversal();
        Map<String, Object> innerDictRefRev = new HashMap<>();
        Map<String, Object> totalLabelDictRefRev = new HashMap<>();
        totalLabelDictRefRev.put("arabic", refRevData.getLabel().getArabic());
        totalLabelDictRefRev.put("english", refRevData.getLabel().getEnglish());
        innerDictRefRev.put("label", totalLabelDictRefRev);
        innerDictRefRev.put("count", purchaseData.getCount());
        innerDictRefRev.put("total", purchaseData.getTotal());
        outterDict.put("refund_reversal", innerDictRefRev);

        ReconciliationLabelField refPurData = details.getRefund_reversal();
        Map<String, Object> innerDictPurRev = new HashMap<>();
        Map<String, Object> totalLabelDictPurRev = new HashMap<>();
        innerDictPurRev.put("arabic", refPurData.getLabel().getArabic());
        innerDictPurRev.put("english", refPurData.getLabel().getEnglish());
        totalLabelDictPurRev.put("label", innerDictPurRev);
        totalLabelDictPurRev.put("count", refPurData.getCount());
        totalLabelDictPurRev.put("total", refPurData.getTotal());
        outterDict.put("purchase_reversal", totalLabelDictPurRev);

        paramMap.put("details", outterDict);

        // Schem Data
        List<Map<String, Object>> refineMenuList = new ArrayList<>();
        List<ReconciliationSchemes> balanceScheme = reconcileReceipt.getSchemes();
        int index = 0;
        for (ReconciliationSchemes element : balanceScheme) {
            if (index == 0) {
                LabelField labelnameElemnt = element.getName();
                LocalizationField labelDataElement = labelnameElemnt.getLabel();
                Map<String, Object> otterElement = new HashMap<>();
                Map<String, Object> elementInner = new HashMap<>();
                elementInner.put("arabic", labelDataElement.getArabic());
                elementInner.put("english", labelDataElement.getEnglish());
                otterElement.put("label", elementInner);
                otterElement.put("value", labelnameElemnt.getValue());
                Map<String, Object> finalDict = new HashMap<>();
                finalDict.put("name", otterElement);
                refineMenuList.add(finalDict);
            } else if (index == 1) {
                Map<String, Object> creditDict = reconcileCommon(element.getPos().getCredit());
                Map<String, Object> debitDict = reconcileCommon(element.getPos().getDebit());
                Map<String, Object> totalDict = reconcileCommon(element.getPos().getTotal());
                Map<String, Object> finalDict = new HashMap<>();
                finalDict.put("credit", creditDict);
                finalDict.put("debit", debitDict);
                finalDict.put("total", totalDict);
                Map<String, Object> finalDictOtter = new HashMap<>();
                finalDictOtter.put("pos", finalDict);
                refineMenuList.add(finalDictOtter);
            } else if (index == 2) {
                Map<String, Object> hostcreditDict = reconcileCommon(element.getHost().getCredit());
                Map<String, Object> hostdebitDict = reconcileCommon(element.getHost().getDebit());
                Map<String, Object> hosttotalDict = reconcileCommon(element.getHost().getTotal());
                Map<String, Object> finalDict = new HashMap<>();
                finalDict.put("credit", hostcreditDict);
                finalDict.put("debit", hostdebitDict);
                finalDict.put("total", hosttotalDict);
                Map<String, Object> finalDictOtter = new HashMap<>();
                finalDictOtter.put("host", finalDict);
                refineMenuList.add(finalDictOtter);
            }
            index++;
        }
        paramMap.put("schemes", refineMenuList);

        // Add Currency
        LocalizationField currencyLabel = reconcileReceipt.getCurrency();
        Map<String, Object> currencyData = new HashMap<>();
        currencyData.put("arabic", currencyLabel.getArabic());
        currencyData.put("english", currencyLabel.getEnglish());
        paramMap.put("currency", currencyData);

        paramMap.put("status", ErrorStatus.success_code);
        paramMap.put("message", message);
        return paramMap;
    }

    private static Map<String, Object> reconcileCommon(ReconciliationLabelField data) {
        LocalizationField labelDataElement = data.getLabel();
        Map<String, Object> otterElement = new HashMap<>();
        Map<String, Object> elementInner = new HashMap<>();
        elementInner.put("arabic", labelDataElement.getArabic());
        elementInner.put("english", labelDataElement.getEnglish());
        otterElement.put("label", elementInner);
        otterElement.put("total", data.getTotal());
        otterElement.put("counr", data.getCount());
        return otterElement;
    }

    private void doReverseAction(String callUUID, String transactionUuid, Boolean enableReceiptUi, String authType,
            String inputValue,
            long finishTimeOut, Boolean isUiDismissible) {
        Log.i("doReverseAction....", "doReverseAction.......first....");
        nearPay.reverse(transactionUuid, enableReceiptUi, finishTimeOut, isUiDismissible, new ReversalListener() {
            @Override
            public void onReversalFinished(@NonNull TransactionData transactionData) {
                List<Map<String, Object>> transactionList = new ArrayList<>();
                for (TransactionReceipt transRecipt : transactionData.getReceipts()) {
                    Map<String, Object> responseDict = getTransactionGetResponse(transRecipt, "Refund Successfull");
                    transactionList.add(responseDict);
                }
                Map<String, Object> responseDict = commonResponse(200, "Payment Success");
                responseDict.put("list", transactionList);
                sendResponse(responseDict, callUUID);
            }

            // @Override
            // public void onReversalFinished(@Nullable List<TransactionReceipt> list) {
            // // you can use "transactionReceipt" to get the transactionReceipt data .
            // List<Map<String, Object>> transactionList = new ArrayList<>();
            // for (TransactionReceipt transRecipt : list) {
            // Map<String, Object> responseDict = getTransactionGetResponse(transRecipt,
            // "Refund Successfull");
            // transactionList.add(responseDict);
            // }
            // Map<String, Object> responseDict = commonResponse(200, "Payment Success");
            // responseDict.put("list", transactionList);
            // sendResponse(responseDict, callUUID);
            // }

            @Override
            public void onReversalFailed(@NonNull ReversalFailure reversalFailure) {
                if (reversalFailure instanceof ReversalFailure.AuthenticationFailed) {
                    // when the Authentication is failed
                    String messageResp = ((ReversalFailure.AuthenticationFailed) reversalFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.authentication_failed_message;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                    sendResponse(paramMap, callUUID);
                    if (authType.equalsIgnoreCase(jwtKey)) {
                        Log.d("..call jwt call.1111...", inputValue);
                        nearPay.updateAuthentication(getAuthType(authType, inputValue));
                    }
                } else if (reversalFailure instanceof ReversalFailure.GeneralFailure) {
                    // when there is general error .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                            ErrorStatus.general_messsage);
                    sendResponse(paramMap, callUUID);
                } else if (reversalFailure instanceof ReversalFailure.FailureMessage) {
                    // when there is FailureMessage
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.failure_code,
                            ErrorStatus.failure_messsage);
                    sendResponse(paramMap, callUUID);
                } else if (reversalFailure instanceof ReversalFailure.InvalidStatus) {
                    // you can get the status using following code
                    String messageResp = ((ReversalFailure.InvalidStatus) reversalFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.invalid_status_messsage;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                    sendResponse(paramMap, callUUID);
                }
            }
        });
    }
    private void dismiss(String callUUID) {
        nearPay.dismiss(new DismissListener() {
            @Override
            public void onDismiss(boolean b) {
                Map<String, Object> toSend = commonResponse(ErrorStatus.success_code, null);
                sendResponse(toSend, callUUID);
            }

            @Override
            public void onDismissFailure(@NonNull CancelFailure cancelFailure) {
                if (cancelFailure instanceof CancelFailure.GeneralFailure) {
                    int status = ErrorStatus.auth_failed_code;
                    String message = ((CancelFailure.GeneralFailure) cancelFailure).getMessage();
                    Map<String, Object> response = commonResponse(status, message);
                    sendResponse(response, callUUID);
                }
            }
        });
    }
    private void doLogoutAction(String callUUID) {
        nearPay.logout(new LogoutListener() {
            @Override
            public void onLogoutCompleted() {
                // write your message here
                Map<String, Object> paramMap = commonResponse(ErrorStatus.success_code, "Logout Successfully");
                sendResponse(paramMap, callUUID);
            }

            @Override
            public void onLogoutFailed(@NonNull LogoutFailure logoutFailure) {
                if (logoutFailure instanceof LogoutFailure.AlreadyLoggedOut) {
                    // when the user is already logged out
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.logout_already_code,
                            "User already logout");
                    sendResponse(paramMap, callUUID);
                } else if (logoutFailure instanceof LogoutFailure.GeneralFailure) {
                    // when the error is general error
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                            ErrorStatus.general_messsage);
                    sendResponse(paramMap, callUUID);
                }
            }
        });
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    private void doSetup(String callUUID, String authType, String inputValue) {
        nearPay.setup(new SetupListener() {
            @Override
            public void onSetupCompleted() {
                // when the setup is done successfully
                Map<String, Object> paramMap = commonResponse(ErrorStatus.success_code,
                        "Application setup completed successfully");
                sendResponse(paramMap, callUUID);
            }

            @Override
            public void onSetupFailed(@NonNull SetupFailure setupFailure) {
                if (setupFailure instanceof SetupFailure.AlreadyInstalled) {
                    // when the payment plugin is already installed .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.already_installed_code,
                            "Plugin Application Already Installed");
                    sendResponse(paramMap, callUUID);
                } else if (setupFailure instanceof SetupFailure.NotInstalled) {
                    // when the installtion failed .
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.not_installed_code,
                            "Plugin Application Installation Failed");
                    sendResponse(paramMap, callUUID);
                } else if (setupFailure instanceof SetupFailure.AuthenticationFailed) {
                    // when the Authentication Failed.
                    String messageResp = ((SetupFailure.AuthenticationFailed) setupFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.authentication_failed_message;

                    Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                    sendResponse(paramMap, callUUID);

                } else if (setupFailure instanceof SetupFailure.InvalidStatus) {
                    // you can get the status using the following code
                    String messageResp = ((SetupFailure.InvalidStatus) setupFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.invalid_status_messsage;
                    Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                    sendResponse(paramMap, callUUID);
                }
            }
        });
    }

    private void setSession(String callUUID, String sessionID, Boolean enableReceiptUi, Boolean enableReversal,
            Long finishTimeOut,
            Boolean isUiDismissible) {
        nearPay.session(sessionID, enableReceiptUi, enableReversal, finishTimeOut, isUiDismissible,
                new SessionListener() {
                    @Override
                    public void onSessionClosed(@Nullable Session session) {
                        // when the session is closed
                        Map<String, Object> responseDict = sessionResponse(session, "Session Closed");
                        sendResponse(responseDict, callUUID);
                    }

                    @Override
                    public void onSessionOpen(@NonNull TransactionData transactionData) {
                        List<Map<String, Object>> transactionList = new ArrayList<>();
                        for (TransactionReceipt transRecipt : transactionData.getReceipts()) {
                            Map<String, Object> responseDict = getTransactionGetResponse(transRecipt,
                                    "Session Successfull");
                            transactionList.add(responseDict);
                        }
                        Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code, "Session Success");
                        responseDict.put("list", transactionList);
                        sendResponse(responseDict, callUUID);

                    }

                    // @Override
                    // public void onSessionOpen(@Nullable List<TransactionReceipt> list) {
                    // // when the session is open , you can get the receipt by using
                    // // TransactionReceipt
                    // List<Map<String, Object>> transactionList = new ArrayList<>();
                    // for (TransactionReceipt transRecipt : list) {
                    // Map<String, Object> responseDict = getTransactionGetResponse(transRecipt,
                    // "Session Successfull");
                    // transactionList.add(responseDict);
                    // }
                    // Map<String, Object> responseDict = commonResponse(ErrorStatus.success_code,
                    // "Session Success");
                    // responseDict.put("list", transactionList);
                    // sendResponse(responseDict, callUUID);
                    // }

                    @Override
                    public void onSessionFailed(@NonNull SessionFailure sessionFailure) {
                        if (sessionFailure instanceof SessionFailure.AuthenticationFailed) {
                            // when the authentication is failed
                            String messageResp = ((SessionFailure.AuthenticationFailed) sessionFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.authentication_failed_message;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.auth_failed_code, message);
                            sendResponse(paramMap, callUUID);
                            if (authTypeShared.equalsIgnoreCase(jwtKey)) {
                                nearPay.updateAuthentication(getAuthType(authTypeShared, authTypeShared));
                            }

                        } else if (sessionFailure instanceof SessionFailure.GeneralFailure) {
                            // when there is general error .
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.general_failure_code,
                                    ErrorStatus.general_messsage);
                            sendResponse(paramMap, callUUID);
                        } else if (sessionFailure instanceof SessionFailure.FailureMessage) {
                            // when there is FailureMessage
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.failure_code,
                                    ErrorStatus.failure_messsage);
                            sendResponse(paramMap, callUUID);
                        } else if (sessionFailure instanceof SessionFailure.InvalidStatus) {
                            // you can get the status using the following code
                            String messageResp = ((SessionFailure.InvalidStatus) sessionFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.invalid_status_messsage;
                            Map<String, Object> paramMap = commonResponse(ErrorStatus.invalid_code, message);
                            sendResponse(paramMap, callUUID);
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
        for (TransactionReceipt transRecipt : session.getTransaction().getReceipts()) {
            Map<String, Object> responseDict = getTransactionGetResponse(transRecipt, "Refund Successfull");
            transactionList.add(responseDict);
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

    private Object classToMap(Object obj) {
        Map tempConvertor = new HashMap<>();
        tempConvertor.put("__", obj);

        Gson gson = new Gson();
        String inString = gson.toJson(tempConvertor);
        Map asMap = gson.fromJson(inString, HashMap.class);
        return asMap.get("__");
    }

    private Map classToMapArr(Object obj) {
        Gson gson = new Gson();
        return gson.fromJson(gson.toJson(obj), HashMap.class);
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
}
