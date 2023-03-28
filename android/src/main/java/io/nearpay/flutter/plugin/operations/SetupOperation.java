package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;

import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.sdk.utils.enums.SetupFailure;
import io.nearpay.sdk.utils.listeners.SetupListener;

public class SetupOperation extends BaseOperation {
    public SetupOperation(PluginProvider provider) {
        super(provider);

    }

    private void doSetup(CompletableFuture<Map> promise) {
        String authvalue = provider.getNearpayLib().authValueShared;
        String authType = provider.getNearpayLib().authTypeShared;
        boolean isAuthValidated = provider.getNearpayLib().isAuthInputValidation(authType, authvalue);
        if (!isAuthValidated) {
            Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.invalid_argument_code,
                    "Authentication parameter missing");
            promise.complete(paramMap);
            return;
        }

        provider.getNearpayLib().nearpay.setup(new SetupListener() {
            @Override
            public void onSetupCompleted() {
                // when the setup is done successfully
                Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.success_code,
                        "Application setup completed successfully");
                promise.complete(paramMap);
            }

            @Override
            public void onSetupFailed(@NonNull SetupFailure setupFailure) {
                if (setupFailure instanceof SetupFailure.AlreadyInstalled) {
                    // when the payment plugin is already installed .
                    Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.already_installed_code,
                            "Plugin Application Already Installed");
                    promise.complete(paramMap);
                } else if (setupFailure instanceof SetupFailure.NotInstalled) {
                    // when the installtion failed .
                    Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.not_installed_code,
                            "Plugin Application Installation Failed");
                    promise.complete(paramMap);
                } else if (setupFailure instanceof SetupFailure.AuthenticationFailed) {
                    // when the Authentication Failed.
                    String messageResp = ((SetupFailure.AuthenticationFailed) setupFailure).toString();
                    String message = messageResp != "" && messageResp.length() > 0 ? messageResp
                            : ErrorStatus.authentication_failed_message;

                    if (authType.equalsIgnoreCase("jwt")) {
                        provider.getNearpayLib().nearpay
                                .updateAuthentication(provider.getNearpayLib().getAuthType(authType, authvalue));
                        Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.auth_failed_code, message);
                        promise.complete(paramMap);
                    } else {
                        Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.auth_failed_code, message);
                        promise.complete(paramMap);
                    }

                } else if (setupFailure instanceof SetupFailure.InvalidStatus) {
                    // you can get the status using the following code
                    String messageResp = ((SetupFailure.InvalidStatus) setupFailure).toString();
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
        doSetup(promise);
    }
}
