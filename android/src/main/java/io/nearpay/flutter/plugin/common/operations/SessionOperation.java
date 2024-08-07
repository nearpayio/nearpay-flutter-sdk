package io.nearpay.flutter.plugin.common.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.Map;
import java.util.UUID;

import io.nearpay.flutter.plugin.common.status.ErrorStatus;
import io.nearpay.flutter.plugin.common.NearpayLib;
import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
import io.nearpay.sdk.data.models.Session;
import io.nearpay.sdk.utils.enums.SessionFailure;
import io.nearpay.sdk.utils.enums.TransactionData;
import io.nearpay.sdk.utils.listeners.SessionListener;

public class SessionOperation extends BaseOperation {

    public SessionOperation(PluginProvider provider) {
        super(provider);
    }

    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {
        String sessionID = filter.getSessionId();
        Long finishTimeout = filter.getTimeout();
        Boolean enableReceiptUi = filter.isEnableReceiptUi();
        Boolean enableReversal = filter.isEnableReversal();
        Boolean enableUiDismiss = filter.isEnableUiDismiss();
        UUID requestId = filter.getRequestId();

        provider.getNearpayLib().nearpay.session(sessionID, enableReceiptUi, enableReversal,
                finishTimeout, enableUiDismiss,
                new SessionListener() {
                    @Override
                    public void onSessionClosed(@Nullable Session session) {
                        Map<String, Object> responseDict = NearpayLib.ApiResponse(ErrorStatus.session_closed_code,
                                "", session);
                        sender.send(responseDict);
                    }

                    @Override
                    public void onSessionOpen(@NonNull TransactionData transactionData) {
                        Map<String, Object> response = NearpayLib.ApiResponse(ErrorStatus.session_opened_code, "",
                                transactionData);
                        sender.send(response);

                    }

                    @Override
                    public void onSessionFailed(@NonNull SessionFailure sessionFailure) {
                        int status = ErrorStatus.general_failure_code;
                        String message = null;
                        TransactionData receipts = null;

                        if (sessionFailure instanceof SessionFailure.AuthenticationFailed) {
                            message = ((SessionFailure.AuthenticationFailed) sessionFailure).getMessage();
                            status = ErrorStatus.auth_failed_code;
                        } else if (sessionFailure instanceof SessionFailure.GeneralFailure) {
                            status = ErrorStatus.general_failure_code;

                        } else if (sessionFailure instanceof SessionFailure.FailureMessage) {
                            // when there is FailureMessage
                            status = ErrorStatus.failure_code;
                            message = ((SessionFailure.FailureMessage) sessionFailure).getMessage();
                        } else if (sessionFailure instanceof SessionFailure.InvalidStatus) {
                            status = ErrorStatus.invalid_code;
                        }
                        Map response = NearpayLib.ApiResponse(status, message, receipts);
                        sender.send(response);
                    }
                });
    }
}
