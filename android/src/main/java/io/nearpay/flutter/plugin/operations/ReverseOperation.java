package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.ReversalFailure;
import io.nearpay.sdk.utils.listeners.ReversalListener;

public class ReverseOperation extends BaseOperation {

    public ReverseOperation(PluginProvider provider) {
        super(provider);
    }

    private void doReverse(Map args, NearpaySender sender) {
        String transactionUuid = (String) args.get("original_transaction_uuid");
        Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
        Long finishTimeout = (Long) args.get("finishTimeout");
        Boolean enableUiDismiss = (Boolean) args.get("enableUiDismiss");

        provider.getNearpayLib().nearpay.reverse(transactionUuid, enableReceiptUi, finishTimeout,enableUiDismiss,
                new ReversalListener() {

                    @Override
                    public void onReversalFinished(@Nullable List<TransactionReceipt> list) {
                        Map<String, Object> responseDict = NearpayLib.ApiResponse(ErrorStatus.success_code, null, list);
                        sender.send(responseDict);
                    }

                    @Override
                    public void onReversalFailed(@NonNull ReversalFailure reversalFailure) {
                        int status = ErrorStatus.general_failure_code;
                        String message = null;
                        List<TransactionReceipt> receipts = null;

                        if (reversalFailure instanceof ReversalFailure.AuthenticationFailed) {
                            // when the Authentication is failed
                            status = ErrorStatus.auth_failed_code;
                            message= ((ReversalFailure.AuthenticationFailed) reversalFailure).getMessage();
                        } else if (reversalFailure instanceof ReversalFailure.FailureMessage) {
                            status = ErrorStatus.failure_code;
                            message= ((ReversalFailure.FailureMessage) reversalFailure).getMessage();
                        } else if (reversalFailure instanceof ReversalFailure.InvalidStatus) {
                            status = ErrorStatus.invalid_code;
                        }
                        Map response = NearpayLib.ApiResponse(status, message, receipts);
                        sender.send(response);

                    }

                });

    }

    @Override
    public void run(Map args, NearpaySender sender) {
        doReverse(args, sender);
    }
}
