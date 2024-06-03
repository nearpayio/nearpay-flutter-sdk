package io.nearpay.flutter.plugin.common.operations;

import androidx.annotation.NonNull;

import java.util.ArrayList;
import java.util.Map;

import io.nearpay.flutter.plugin.common.NearpayLib;
import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.status.ErrorStatus;
import io.nearpay.sdk.data.models.SessionInfo;
import io.nearpay.sdk.utils.enums.CompatibilityFailure;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.enums.SessionFailure;
import io.nearpay.sdk.utils.listeners.CheckSessionListener;
import io.nearpay.sdk.utils.listeners.CompatibilityListener;

public class CheckCompatibilityOperation extends BaseOperation {
    public CheckCompatibilityOperation(PluginProvider provider) {
        super(provider);
    }
    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {
        provider.getNearpayLib().nearpay.deviceCompatibility(new CompatibilityListener() {
            @Override
            public void onDeviceCompatible() {
                Map toSend = NearpayLib.ApiResponse(ErrorStatus.success_code, null);
                sender.send(toSend);
            }

            @Override
            public void onDeviceIncompatible(@NonNull CompatibilityFailure compatibilityFailure) {
                int status = ErrorStatus.general_failure_code;
                String message = null;
                Map response = NearpayLib.ApiResponse(status, message, new ArrayList());
                sender.send(response);
            }
        });
    }
}







