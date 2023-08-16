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
import io.nearpay.sdk.utils.PaymentText;
import io.nearpay.sdk.utils.enums.NetworkConfiguration;
import io.nearpay.sdk.utils.enums.UIPosition;

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
        NetworkConfiguration networkConfig = filter.getNetworkConfiguration();
        UIPosition uiPosition = filter.getUiPosition();
        Boolean loadingUI = filter.getLoadingUi();
        String arabicPaymentText = filter.getArabicPaymentText();
        String englishPaymentText = filter.getEnglishPaymentText();


        this.provider.getNearpayLib().authTypeShared = authType;
        this.provider.getNearpayLib().authValueShared = authValue;
        boolean isAuthValidated = this.provider.getNearpayLib().isAuthInputValidation(authType, authValue);

        Map<String, Object> response;

        if (!isAuthValidated) {
            response = NearpayLib.commonResponse(ErrorStatus.invalid_argument_code,
                    "Authentication parameter missing");
        } else {
            NearPay.Builder builder = new NearPay.Builder()
                    .context(this.provider.getNearpayLib().context)
                    .authenticationData(this.provider.getNearpayLib().getAuthType(authType, authValue))
                    .environment(env)
                    .locale(locale)
                    .networkConfiguration(networkConfig)
                    .paymentText(new PaymentText(arabicPaymentText, englishPaymentText))
                    .uiPosition(uiPosition)
                    .loadingUi(loadingUI);



            this.provider.getNearpayLib().nearpay =builder.build();
//
//                    new NearPay.Builder()(
//                    this.provider.getNearpayLib().context,
//                    this.provider.getNearpayLib().getAuthType(authType, authValue),
//                    locale,
//                    env);

            response = NearpayLib.commonResponse(ErrorStatus.success_code,
                    "NearPay initialized");
        }

        sender.send(response);
    }
}
