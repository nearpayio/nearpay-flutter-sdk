package io.nearpay.flutter.plugin.operations;

import android.annotation.SuppressLint;


import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.sdk.Environments;
import io.nearpay.sdk.NearPay;

public class InitializeOperation extends BaseOperation {

    public InitializeOperation(PluginProvider provider) {
        super(provider);
    }

    public void doInitialization(Map args, NearpaySender sender) {
        String authvalue = args.get("authvalue") == null ? "" : args.get("authvalue").toString();
        String authType = args.get("authtype") == null ? "" : args.get("authtype").toString();
        this.provider.getNearpayLib().authTypeShared = authType;
        this.provider.getNearpayLib().authValueShared = authvalue;
        boolean isAuthValidated = this.provider.getNearpayLib().isAuthInputValidation(authType, authvalue);
        String localeStr = args.get("locale") != null ? args.get("locale").toString() : "default";
        Locale locale = localeStr.equals("default") ? Locale.getDefault() : Locale.getDefault();
        String environmentStr = args.get("environment") == null ? "sandbox"
                : args.get("environment").toString();
        Environments env = environmentStr.equals("sandbox") ? Environments.SANDBOX
                : environmentStr.equals("production") ? Environments.PRODUCTION : Environments.TESTING;

        Map<String, Object> response;

        if (!isAuthValidated) {
            response = NearpayLib.commonResponse(ErrorStatus.invalid_argument_code,
                    "Authentication parameter missing");
        } else {
            this.provider.getNearpayLib().nearpay = new NearPay(
                    this.provider.getNearpayLib().context,
                    this.provider.getNearpayLib().getAuthType(authType, authvalue),
                    locale,
                    env);

            response = NearpayLib.commonResponse(ErrorStatus.success_code,
                    "NearPay initialized");
        }

        sender.send(response);

    }

    @SuppressLint("NewApi")
    @Override
    public void run(Map args, NearpaySender sender) {
        doInitialization(args, sender);
    }
}
