package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.ReversalFailure;
import io.nearpay.sdk.utils.listeners.ReversalListener;

public class ReverseOperation extends BaseOperation {

    public ReverseOperation(PluginProvider provider) {
        super(provider);
    }

    private void doReverse(Map args, CompletableFuture<Map> promise) {
        String transactionUuid = (String) args.get("transaction_uuid");
        Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
        Long finishTimeout = (Long) args.get("finishTimeout");

        provider.getNearpayLib().nearpay.reverse(transactionUuid, enableReceiptUi, finishTimeout,
                new ReversalListener() {

                    @Override
                    public void onReversalFinished(@Nullable List<TransactionReceipt> list) {
                        // you can use "transactionReceipt" to get the transactionReceipt data .
                        List<Map<String, Object>> transactionList = new ArrayList<>();
                        for (TransactionReceipt transReceipt : list) {
                            String jsonStr = ReceiptUtilsKt.toJson(transReceipt);
                            transactionList.add(NearpayLib.JSONStringToMap(jsonStr));
                        }
                        Map<String, Object> responseDict = NearpayLib.commonResponse(200, "Payment Success");
                        responseDict.put("list", transactionList);
                        promise.complete(responseDict);
                    }

                    @Override
                    public void onReversalFailed(@NonNull ReversalFailure reversalFailure) {
                        if (reversalFailure instanceof ReversalFailure.AuthenticationFailed) {
                            // when the Authentication is failed
                            String messageResp = ((ReversalFailure.AuthenticationFailed) reversalFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.authentication_failed_message;
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.auth_failed_code,
                                    message);
                            promise.complete(paramMap);
//                            if (authType.equalsIgnoreCase("jwt")) {
//                                provider.getNearpayLib().nearpay
//                                        .updateAuthentication(
//                                                provider.getNearpayLib().getAuthType(authType, authvalue));
//                            }
                        } else if (reversalFailure instanceof ReversalFailure.GeneralFailure) {
                            // when there is general error .
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.general_failure_code,
                                    ErrorStatus.general_messsage);
                            promise.complete(paramMap);
                        } else if (reversalFailure instanceof ReversalFailure.FailureMessage) {
                            // when there is FailureMessage
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.failure_code,
                                    ErrorStatus.failure_messsage);
                            promise.complete(paramMap);
                        } else if (reversalFailure instanceof ReversalFailure.InvalidStatus) {
                            // you can get the status using following code
                            String messageResp = ((ReversalFailure.InvalidStatus) reversalFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.invalid_status_messsage;
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.invalid_code, message);
                            promise.complete(paramMap);
                        }
                    }
                });

    }

    @Override
    public void run(Map args, CompletableFuture<Map> promise) {
        doReverse(args, promise);
    }
}
