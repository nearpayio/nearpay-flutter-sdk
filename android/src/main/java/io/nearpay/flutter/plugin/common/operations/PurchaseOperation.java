package io.nearpay.flutter.plugin.common.operations;

import androidx.annotation.NonNull;

import java.util.Map;
import java.util.UUID;

import io.nearpay.flutter.plugin.common.NearpayLib;
import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
import io.nearpay.sdk.utils.enums.PurchaseFailure;
import io.nearpay.sdk.utils.enums.TransactionData;
import io.nearpay.sdk.utils.listeners.PurchaseListener;
import io.nearpay.flutter.plugin.common.status.ErrorStatus;

public class PurchaseOperation extends BaseOperation {

    public PurchaseOperation(PluginProvider provider) {
        super(provider);
    }

    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {

        Long amount = filter.getAmount();
        String customerReferenceNumber = filter.getCustomerReferenceNumber();
        UUID jobId = filter.getJobId();
        Boolean enableReceiptUi = filter.isEnableReceiptUi();
        Boolean enableReversal = filter.isEnableReversal();
        Long timeout = filter.getTimeout();
        Boolean enableUiDismiss =filter.isEnableUiDismiss();

        this.provider.getNearpayLib().nearpay.purchase(amount, customerReferenceNumber, enableReceiptUi, enableReversal,
                timeout,
                jobId, enableUiDismiss,
                new PurchaseListener() {
                    @Override
                    public void onPurchaseApproved(@NonNull TransactionData transactionData) {
                        Map<String, Object> responseDict = NearpayLib.ApiResponse(ErrorStatus.success_code,
                                null, transactionData);
                        sender.send(responseDict);
                    }

                    @Override
                    public void onPurchaseFailed(@NonNull PurchaseFailure purchaseFailure) {
                        int status = ErrorStatus.general_failure_code;
                        String message = null;
                        TransactionData receipts = null;

                        if (purchaseFailure instanceof PurchaseFailure.PurchaseDeclined) {
                            status = ErrorStatus.purchase_declined_code;
                            receipts = ((PurchaseFailure.PurchaseDeclined) purchaseFailure).getTransactionData();
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
                        sender.send(response);
                    }

                });
    }
}
