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
import io.nearpay.flutter.plugin.util.ArgsFilter;
import io.nearpay.sdk.data.models.ReconciliationReceipt;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.ReconcileFailure;
import io.nearpay.sdk.utils.enums.TransactionData;
import io.nearpay.sdk.utils.listeners.ReconcileListener;

public class ReconciliationOperation extends BaseOperation {

        public ReconciliationOperation(PluginProvider provider) {
                super(provider);
        }

        @Override
        public void run(ArgsFilter filter, NearpaySender sender) {
                Boolean enableReceiptUi = filter.isEnableReceiptUi();
                Long finishTimeout = filter.getTimeout();
                String adminPin = filter.getAdminPin();
                Boolean enableUiDismiss = filter.isEnableUiDismiss();
                UUID jobId = filter.getJobId();

                provider.getNearpayLib().nearpay.reconcile(jobId, enableReceiptUi, adminPin, finishTimeout,
                                enableUiDismiss,
                                new ReconcileListener() {
                                        @Override
                                        public void onReconcileFinished(
                                                        @Nullable ReconciliationReceipt reconciliationReceipt) {
                                                List<ReconciliationReceipt> list = new ArrayList();
                                                list.add(reconciliationReceipt);

                                                Map<String, Object> responseDict = NearpayLib.ApiResponse(
                                                                ErrorStatus.success_code, null, list);

                                                System.out.println("-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
                                                System.out.println(responseDict);
                                                sender.send(responseDict);
                                        }

                                        @Override
                                        public void onReconcileFailed(@NonNull ReconcileFailure reconcileFailure) {
                                                int status = ErrorStatus.general_failure_code;
                                                String message = null;
                                                TransactionData receipts = null;

                                                if (reconcileFailure instanceof ReconcileFailure.AuthenticationFailed) {
                                                        status = ErrorStatus.auth_failed_code;
                                                        message = ((ReconcileFailure.AuthenticationFailed) reconcileFailure)
                                                                        .getMessage();
                                                } else if (reconcileFailure instanceof ReconcileFailure.FailureMessage) {
                                                        status = ErrorStatus.failure_code;
                                                        message = ((ReconcileFailure.FailureMessage) reconcileFailure)
                                                                        .getMessage();
                                                } else if (reconcileFailure instanceof ReconcileFailure.InvalidStatus) {
                                                        status = ErrorStatus.invalid_code;
                                                }
                                                Map response = NearpayLib.ApiResponse(status, message, receipts);
                                                sender.send(response);

                                        }

                                });
        }
}
