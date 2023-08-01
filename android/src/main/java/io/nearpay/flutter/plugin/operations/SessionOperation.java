package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.sdk.data.models.Session;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.SessionFailure;
import io.nearpay.sdk.utils.enums.TransactionData;
import io.nearpay.sdk.utils.listeners.SessionListener;

public class SessionOperation extends BaseOperation {

    public SessionOperation(PluginProvider provider) {
        super(provider);
    }

    private Map sessionToJson(Session session) {
        Gson gson = new Gson(); // Or use new GsonBuilder().create();
        String json = gson.toJson(session); // serializes target to Json return
        Map sessionMap = NearpayLib.JSONStringToMap(json);
        Map response = NearpayLib.commonResponse(ErrorStatus.success_code, "Session Closed");
        response.put("session", sessionMap);
        return response;
    }

    private void doSession(Map args, NearpaySender sender) {
        String sessionID = (String) args.get("sessionID");
        Long finishTimeout = (Long) args.get("finishTimeout");
        Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
        Boolean enableReversal = (Boolean) args.get("enableReversal");
        Boolean enableUiDismiss = (Boolean) args.get("enableUiDismiss");

        provider.getNearpayLib().nearpay.session(sessionID, enableReceiptUi, enableReversal,
                finishTimeout, enableUiDismiss,
                new SessionListener() {
                    @Override
                    public void onSessionClosed(@Nullable Session session) {
                        Map<String, Object> responseDict = NearpayLib.SessionResponse(ErrorStatus.session_closed_code, "", session);
                        sender.send(responseDict);
                    }

                    @Override
                    public void onSessionOpen(@NonNull TransactionData transactionData) {
                        Map<String, Object> response = NearpayLib.ApiResponse(ErrorStatus.session_opened_code, "", transactionData);
                        sender.send(response);

                    }

//                    @Override
//                    public void onSessionOpen(@Nullable List<TransactionReceipt> list) {
//                        Map<String, Object> response = NearpayLib.ApiResponse(ErrorStatus.session_opened_code, "", list);
//                        sender.send(response);
//                    }

                    @Override
                    public void onSessionFailed(@NonNull SessionFailure sessionFailure) {
                        int status = ErrorStatus.general_failure_code;
                        String message = null;
                        TransactionData receipts = null;


                        if (sessionFailure instanceof SessionFailure.AuthenticationFailed) {
                            message =((SessionFailure.AuthenticationFailed) sessionFailure).getMessage();
                            status = ErrorStatus.auth_failed_code;
                        } else if (sessionFailure instanceof SessionFailure.GeneralFailure) {
                            status = ErrorStatus.general_failure_code;

                        } else if (sessionFailure instanceof SessionFailure.FailureMessage) {
                            // when there is FailureMessage
                            status = ErrorStatus.failure_code;
                            message = ((SessionFailure.FailureMessage) sessionFailure).getMessage();
                        }
                        else if (sessionFailure instanceof SessionFailure.InvalidStatus) {
                            status = ErrorStatus.invalid_code;
                        }
                        Map response = NearpayLib.ApiResponse(status, message, receipts);
                        sender.send(response);
                    }
                });
    }

    @Override
    public void run(Map args, NearpaySender sender) {
        doSession(args, sender);
    }
}
