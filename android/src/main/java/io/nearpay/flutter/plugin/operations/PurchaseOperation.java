package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.enums.PurchaseFailure;
import io.nearpay.sdk.utils.listeners.PurchaseListener;
import io.nearpay.flutter.plugin.ErrorStatus;

public class PurchaseOperation extends BaseOperation {

    public PurchaseOperation(PluginProvider provider) {
        super(provider);
    }

    private void doPaymentAction(Map args, CompletableFuture<Map> promise) {
        Long amount = (Long) args.get("amount");
        String customerReferenceNumber = args.get("customer_reference_number").toString();
        UUID transaction_uuid = (UUID) args.get("transaction_uuid");
        Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
        Boolean enableReversal = (Boolean) args.get("enableReversal");
        Long timeout = (Long) args.get("finishTimeout");
        Boolean enableUiDismiss = (Boolean) args.get("enableUiDismiss");
        this.provider.getNearpayLib().nearpay.purchase(amount, customerReferenceNumber, enableReceiptUi, enableReversal,
                timeout, transaction_uuid, enableUiDismiss,
                new PurchaseListener() {

                    @Override
                    public void onPurchaseFailed(@NonNull PurchaseFailure purchaseFailure) {
                        int status = ErrorStatus.general_failure_code;
                        String message = null;
                        List<TransactionReceipt> receipts = null;

                        if (purchaseFailure instanceof PurchaseFailure.PurchaseDeclined) {
                            status = ErrorStatus.purchase_declined_code;
                            receipts = ((PurchaseFailure.PurchaseDeclined) purchaseFailure).getReceipts();
                        } else if (purchaseFailure instanceof PurchaseFailure.PurchaseRejected) {
                            status = ErrorStatus.purchase_rejected_code;
                            message = ((PurchaseFailure.PurchaseRejected) purchaseFailure).getMessage();

                        } else if (purchaseFailure instanceof PurchaseFailure.AuthenticationFailed) {
                            status = ErrorStatus.auth_failed_code;
                            message = ((PurchaseFailure.AuthenticationFailed) purchaseFailure).getMessage();

                        } else if (purchaseFailure instanceof PurchaseFailure.InvalidStatus) {
                            status = ErrorStatus.invalid_code;
                        }
                        Map response = NearpayLib.ApiResponse(status, message, receipts);
                        promise.complete(response);
                    }

                    @Override
                    public void onPurchaseApproved(@Nullable List<TransactionReceipt> list) {

                        Map<String, Object> responseDict = NearpayLib.ApiResponse(ErrorStatus.success_code,
                                null, list);
                        promise.complete(responseDict);
                    }
                });

    }

    @Override
    public void run(Map args, CompletableFuture<Map> promise) {
        doPaymentAction(args, promise);
    }
}
