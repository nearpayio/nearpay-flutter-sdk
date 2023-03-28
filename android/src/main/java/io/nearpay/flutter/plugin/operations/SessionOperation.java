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
import io.nearpay.sdk.data.models.Session;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.SessionFailure;
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

    private void doSession(Map args, CompletableFuture<Map> promise) {
        String sessionID = (String) args.get("sessionID");
        Long finishTimeout = (Long) args.get("finishTimeout");
        Boolean enableReceiptUi = (Boolean) args.get("enableReceiptUi");
        Boolean enableReversal = (Boolean) args.get("enableReversal");

        provider.getNearpayLib().nearpay.session(sessionID, enableReceiptUi, enableReversal,
                finishTimeout,
                new SessionListener() {
                    @Override
                    public void onSessionClosed(@Nullable Session session) {
                        // when the session is closed
                        // Map<String, Object> responseDict = sessionResponse(session, "Session
                        // Closed");

                        // Map<String, Object> responseDict = sessionResponse(session, "Session
                        // Closed");
                        Map<String, Object> responseDict = sessionToJson(session);
                        promise.complete(responseDict);
                    }

                    @Override
                    public void onSessionOpen(@Nullable List<TransactionReceipt> list) {
                        // when the session is open , you can get the receipt by using
                        // TransactionReceipt
                        List<Map<String, Object>> transactionList = new ArrayList<>();
                        for (TransactionReceipt transReceipt : list) {
                            String jsonStr = ReceiptUtilsKt.toJson(transReceipt);
                            transactionList.add(NearpayLib.JSONStringToMap(jsonStr));
                        }
                        Map<String, Object> responseDict = NearpayLib.commonResponse(ErrorStatus.success_code,
                                "Session Success");
                        responseDict.put("list", transactionList);
                        promise.complete(responseDict);
                    }

                    @Override
                    public void onSessionFailed(@NonNull SessionFailure sessionFailure) {
                        if (sessionFailure instanceof SessionFailure.AuthenticationFailed) {
                            // when the authentication is failed
                            String messageResp = ((SessionFailure.AuthenticationFailed) sessionFailure).toString();
                            String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                                    : ErrorStatus.authentication_failed_message;
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.auth_failed_code,
                                    message);
                            promise.complete(paramMap);
                            // if (authTypeShared.equalsIgnoreCase(jwtKey)) {
                            // provider.getNearpayLib().nearpay
                            // .updateAuthentication(getAuthType(authTypeShared, authTypeShared));
                            // }

                        } else if (sessionFailure instanceof SessionFailure.GeneralFailure) {
                            // when there is general error .
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.general_failure_code,
                                    ErrorStatus.general_messsage);
                            promise.complete(paramMap);
                        } else if (sessionFailure instanceof SessionFailure.FailureMessage) {
                            // when there is FailureMessage
                            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.failure_code,
                                    ErrorStatus.failure_messsage);
                            promise.complete(paramMap);
                        } else if (sessionFailure instanceof SessionFailure.InvalidStatus) {
                            // you can get the status using the following code
                            String messageResp = ((SessionFailure.InvalidStatus) sessionFailure).toString();
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
        doSession(args, promise);
    }
}
