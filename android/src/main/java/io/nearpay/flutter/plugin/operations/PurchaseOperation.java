package io.nearpay.flutter.plugin.operations;

import android.annotation.SuppressLint;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.flutter.plugin.common.MethodCall;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.NearpayPlugin;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.PurchaseFailure;
import io.nearpay.sdk.utils.listeners.PurchaseListener;

public class PurchaseOperation extends BaseOperation {

    public PurchaseOperation(PluginProvider provider) {
        super(provider);
    }

    private void doPaymentAction(Map args, CompletableFuture<Map> promise) {
        Long amount = (Long) args.get("amount");
        String customerReferenceNumber = args.get("customer_reference_number").toString();
        Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
        Boolean enableReversal = (Boolean) args.get("enableReversal");
        Long timeout = (Long) args.get("finishTimeout");

        this.provider.getNearpayLib().nearpay.purchase(amount, customerReferenceNumber, enableReceiptUi, enableReversal,
                timeout,
                new PurchaseListener() {
                    @Override
                    public void onPurchaseFailed(@NonNull PurchaseFailure purchaseFailure) {
                        if (purchaseFailure instanceof PurchaseFailure.GeneralFailure) {
                            // when there is General error .
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.general_failure_code,
                                    ErrorStatus.general_messsage);
                            promise.complete(paramMap);
                        } else if (purchaseFailure instanceof PurchaseFailure.PurchaseDeclined) {
                            // when the payment declined.
                            String messageResp = ((PurchaseFailure.PurchaseDeclined) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.purchase_declined_message;
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.purchase_declined_code,
                                    message);
                            promise.complete(paramMap);
                        } else if (purchaseFailure instanceof PurchaseFailure.PurchaseRejected) {
                            // when the payment rejected.
                            String messageResp = ((PurchaseFailure.PurchaseRejected) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.purchase_rejected_message;
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.purchase_rejected_code,
                                    message);
                            promise.complete(paramMap);
                        } else if (purchaseFailure instanceof PurchaseFailure.AuthenticationFailed) {
                            String messageResp = ((PurchaseFailure.AuthenticationFailed) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.authentication_failed_message;
                            // if (authType.equalsIgnoreCase("jwt")) {
                            // lib.nearpay.updateAuthentication(lib.getAuthType(authType, authvalue));
                            // }
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.auth_failed_code,
                                    message);
                            promise.complete(paramMap);
                        } else if (purchaseFailure instanceof PurchaseFailure.InvalidStatus) {
                            // you can get the status using the following code
                            String messageResp = ((PurchaseFailure.InvalidStatus) purchaseFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.invalid_status_messsage;
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.invalid_code, message);
                            promise.complete(paramMap);
                        }
                    }

                    @Override
                    public void onPurchaseApproved(@Nullable List<TransactionReceipt> list) {

                        List<Map<String, Object>> transactionList = new ArrayList<>();
                        for (TransactionReceipt transReceipt : list) {
                            Gson gson = new Gson(); // Or use new GsonBuilder().create();
                            String json = gson.toJson(transReceipt); // serializes target to Json
                            transactionList.add(NearpayLib.JSONStringToMap(json));
                        }
                        Map<String, Object> responseDict = NearpayLib.commonResponse(ErrorStatus.success_code,
                                "Payment Success");
                        responseDict.put("list", transactionList);
                        promise.complete(responseDict);
                    }
                });

    }

    @Override
    public void run(Map args, CompletableFuture<Map> promise) {
        doPaymentAction(args, promise);
    }
}
