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
import io.nearpay.sdk.utils.enums.RefundFailure;
import io.nearpay.sdk.utils.listeners.RefundListener;

public class RefundOperation extends BaseOperation {

        public RefundOperation(PluginProvider provider) {
                super(provider);
        }

        private void refundValidation(Map args, CompletableFuture<Map> promise) {
                Long amount = (Long) args.get("amount");
                String reference_retrieval_number = args.get("transaction_uuid").toString();
                String customer_reference_number = args.get("customer_reference_number").toString();
                Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
                Boolean enableReversal = (Boolean) args.get("enableReversal");
                Boolean enableEditableRefundAmountUi = (Boolean) args.get("enableEditableRefundAmountUi");
                Long finishTimeout = (Long) args.get("finishTimeout");
                 String adminPin = args.get("adminPin") == null ? null : (String) args.get("adminPin");

                provider.getNearpayLib().nearpay.refund(amount, reference_retrieval_number,
                                customer_reference_number, enableReceiptUi,
                                enableReversal, enableEditableRefundAmountUi, finishTimeout, adminPin,
                                new RefundListener() {
                                        @Override
                                        public void onRefundApproved(@Nullable List<TransactionReceipt> list) {
                                                Map<String, Object> responseDict = NearpayLib.ApiResponse(
                                                        ErrorStatus.success_code,
                                                        "Refund Success",
                                                        list
                                                );
                                                promise.complete(responseDict);
                                        }

                                        @Override
                                        public void onRefundFailed(@NonNull RefundFailure refundFailure) {
                                                int status = ErrorStatus.general_failure_code;
                                                String message = null;
                                                List<TransactionReceipt> receipts = null;

                                                if (refundFailure instanceof RefundFailure.RefundDeclined) {
                                                        // when the payment declined.
                                                        status = ErrorStatus.refund_declined_code;
                                                        receipts = ((RefundFailure.RefundDeclined) refundFailure).getReceipts();

                                                } else if (refundFailure instanceof RefundFailure.RefundRejected) {
                                                        status = ErrorStatus.refund_rejected_code;
                                                        message = ((RefundFailure.RefundRejected) refundFailure).getMessage();
                                                } else if (refundFailure instanceof RefundFailure.AuthenticationFailed) {
                                                        status = ErrorStatus.auth_failed_code;
                                                        message = ((RefundFailure.AuthenticationFailed) refundFailure).getMessage();
                                                } else if (refundFailure instanceof RefundFailure.InvalidStatus) {
                                                        status = ErrorStatus.invalid_code;
                                                }
                                                Map response = NearpayLib.ApiResponse(status, message, receipts);
                                                promise.complete(response);
                                        }

                                });

        }

        @Override
        public void run(Map args, CompletableFuture<Map> promise) {
                refundValidation(args, promise);
        }
}
