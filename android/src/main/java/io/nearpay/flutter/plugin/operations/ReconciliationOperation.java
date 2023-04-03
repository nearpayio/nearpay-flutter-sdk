package io.nearpay.flutter.plugin.operations;

import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import io.flutter.plugin.common.MethodCall;

import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.sdk.data.models.ReconciliationReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.ReconcileFailure;
import io.nearpay.sdk.utils.listeners.ReconcileListener;

public class ReconciliationOperation extends BaseOperation {

        public ReconciliationOperation(PluginProvider provider) {
                super(provider);
        }

        private void doReconcileAction(Map args, CompletableFuture<Map> promise) {
                Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
                Long finishTimeout = (Long) args.get("finishTimeout");
                String adminPin = args.get("adminPin") == null ? null : (String) args.get("adminPin");

                provider.getNearpayLib().nearpay.reconcile(enableReceiptUi, adminPin, finishTimeout,
                                new ReconcileListener() {
                                        @Override
                                        public void onReconcileFinished(
                                                        @Nullable ReconciliationReceipt reconciliationReceipt) {
                                                // you can use the object to get the reconciliationReceipt data .
                                                Map<String, Object> responseDict = NearpayLib.JSONStringToMap(
                                                                ReceiptUtilsKt.toJson(reconciliationReceipt));

                                                promise.complete(responseDict);
                                        }

                                        @Override
                                        public void onReconcileFailed(@NonNull ReconcileFailure reconcileFailure) {
                                                if (reconcileFailure instanceof ReconcileFailure.AuthenticationFailed) {
                                                        // when the Authentication is failed
                                                        String messageResp = ((ReconcileFailure.AuthenticationFailed) reconcileFailure)
                                                                        .toString();
                                                        String message = messageResp != "" && messageResp.length() > 0
                                                                        ? messageResp
                                                                        : ErrorStatus.authentication_failed_message;
                                                        Map<String, Object> paramMap = NearpayLib.commonResponse(
                                                                        ErrorStatus.auth_failed_code,
                                                                        message);
                                                        promise.complete(paramMap);
                                                        // if (authType.equalsIgnoreCase("jwt")) {
                                                        // provider.getNearpayLib().nearpay
                                                        // .updateAuthentication(
                                                        // provider.getNearpayLib()
                                                        // .getAuthType(authType,
                                                        // authvalue));
                                                        // }
                                                } else if (reconcileFailure instanceof ReconcileFailure.GeneralFailure) {
                                                        // when there is general error .
                                                        Map<String, Object> paramMap = NearpayLib.commonResponse(
                                                                        ErrorStatus.general_failure_code,
                                                                        ErrorStatus.general_messsage);
                                                        promise.complete(paramMap);
                                                } else if (reconcileFailure instanceof ReconcileFailure.FailureMessage) {
                                                        // when there is FailureMessage
                                                        Map<String, Object> paramMap = NearpayLib.commonResponse(
                                                                        ErrorStatus.failure_code,
                                                                        ErrorStatus.failure_messsage);
                                                        promise.complete(paramMap);
                                                } else if (reconcileFailure instanceof ReconcileFailure.InvalidStatus) {
                                                        // you can get the status using following code
                                                        String messageResp = ((ReconcileFailure.InvalidStatus) reconcileFailure)
                                                                        .toString();
                                                        String message = messageResp != "" && messageResp.length() > 0
                                                                        ? messageResp
                                                                        : ErrorStatus.invalid_status_messsage;

                                                        Map<String, Object> paramMap = NearpayLib.commonResponse(
                                                                        ErrorStatus.invalid_code, message);
                                                        promise.complete(paramMap);
                                                }
                                        }
                                });
        }

        @Override
        public void run(Map args, CompletableFuture<Map> promise) {
                doReconcileAction(args, promise);
        }
}
