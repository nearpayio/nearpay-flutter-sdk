package io.nearpay.flutter.plugin.operations;

import android.annotation.SuppressLint;

import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;
import io.nearpay.sdk.Environments;
import io.nearpay.sdk.NearPay;

public class InitializeOperation extends BaseOperation {

    public InitializeOperation(PluginProvider provider) {
        super(provider);
    }

    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {
        String authValue = filter.getAuthValue();
        String authType = filter.getAuthType();
        Locale locale = filter.getLocale();
        Environments env = filter.getEnviroment();

        this.provider.getNearpayLib().authTypeShared = authType;
        this.provider.getNearpayLib().authValueShared = authValue;
        boolean isAuthValidated = this.provider.getNearpayLib().isAuthInputValidation(authType, authValue);

        Map<String, Object> response;

        if (!isAuthValidated) {
            response = NearpayLib.commonResponse(ErrorStatus.invalid_argument_code,
                    "Authentication parameter missing");
        } else {
            this.provider.getNearpayLib().nearpay = new NearPay(
                    this.provider.getNearpayLib().context,
                    this.provider.getNearpayLib().getAuthType(authType, authValue),
                    locale,
                    env);

            response = NearpayLib.commonResponse(ErrorStatus.success_code,
                    "NearPay initialized");
        }

        sender.send(response);
    }
}
