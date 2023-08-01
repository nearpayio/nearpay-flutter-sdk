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
import io.nearpay.sdk.utils.enums.RefundFailure;
import io.nearpay.sdk.utils.enums.TransactionData;
import io.nearpay.sdk.utils.listeners.RefundListener;

public class RefundOperation extends BaseOperation {

        public RefundOperation(PluginProvider provider) {
                super(provider);
        }

        private void refundValidation(Map args, NearpaySender sender) {
                Long amount = (Long) args.get("amount");
                String original_transaction_uuid= args.get("original_transaction_uuid").toString();
                String customer_reference_number = args.get("customer_reference_number").toString();
                UUID transaction_uuid = (UUID) args.get("transaction_uuid");
                Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
                Boolean enableReversal = (Boolean) args.get("enableReversal");
                Boolean enableEditableRefundAmountUi = (Boolean) args.get("enableEditableRefundAmountUi");
                Long finishTimeout = (Long) args.get("finishTimeout");
                String adminPin = args.get("adminPin") == null ? null : (String) args.get("adminPin");
                Boolean enableUiDismiss = (Boolean) args.get("enableUiDismiss");

                provider.getNearpayLib().nearpay.refund(amount, original_transaction_uuid,
                                customer_reference_number, enableReceiptUi,
                                enableReversal, enableEditableRefundAmountUi, finishTimeout, transaction_uuid, adminPin,enableUiDismiss,
                                new RefundListener() {
                                        @Override
                                        public void onRefundApproved(@NonNull TransactionData transactionData) {
                                                Map<String, Object> responseDict = NearpayLib.ApiResponse(
                                                        ErrorStatus.success_code,
                                                        "Refund Success", transactionData
                                                );
                                                sender.send(responseDict);
                                        }

                                        @Override
                                        public void onRefundFailed(@NonNull RefundFailure refundFailure) {
                                                int status = ErrorStatus.general_failure_code;
                                                String message = null;
                                                TransactionData receipts = null;

                                                if (refundFailure instanceof RefundFailure.RefundDeclined) {
                                                        // when the payment declined.
                                                        status = ErrorStatus.refund_declined_code;
                                                        receipts = ((RefundFailure.RefundDeclined) refundFailure).getTransactionData();

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
                                                sender.send(response);

                                        }

                                        //                                        @Override
//                                        public void onRefundApproved(@Nullable List<TransactionReceipt> list) {
//                                                Map<String, Object> responseDict = NearpayLib.ApiResponse(
//                                                        ErrorStatus.success_code,
//                                                        "Refund Success",
//                                                        list
//                                                );
//                                                sender.send(responseDict);
//                                        }
//
//                                        @Override
//                                        public void onRefundFailed(@NonNull RefundFailure refundFailure) {
//                                                int status = ErrorStatus.general_failure_code;
//                                                String message = null;
//                                                List<TransactionReceipt> receipts = null;
//
//                                                if (refundFailure instanceof RefundFailure.RefundDeclined) {
//                                                        // when the payment declined.
//                                                        status = ErrorStatus.refund_declined_code;
//                                                        receipts = ((RefundFailure.RefundDeclined) refundFailure).getReceipts();
//
//                                                } else if (refundFailure instanceof RefundFailure.RefundRejected) {
//                                                        status = ErrorStatus.refund_rejected_code;
//                                                        message = ((RefundFailure.RefundRejected) refundFailure).getMessage();
//                                                } else if (refundFailure instanceof RefundFailure.AuthenticationFailed) {
//                                                        status = ErrorStatus.auth_failed_code;
//                                                        message = ((RefundFailure.AuthenticationFailed) refundFailure).getMessage();
//                                                } else if (refundFailure instanceof RefundFailure.InvalidStatus) {
//                                                        status = ErrorStatus.invalid_code;
//                                                }
//                                                Map response = NearpayLib.ApiResponse(status, message, receipts);
//                                                sender.send(response);
//                                        }
//
                                });

        }

        @Override
        public void run(Map args, NearpaySender sender) {
                refundValidation(args, sender);
        }
}
