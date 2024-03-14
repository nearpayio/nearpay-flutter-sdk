
package io.nearpay.flutter.plugin.common.operations;

import androidx.annotation.NonNull;
import java.util.Map;
import java.util.UUID;
import io.nearpay.flutter.plugin.common.NearpayLib;
import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.status.ErrorStatus;
import io.nearpay.sdk.utils.enums.CompatibilityFailure;
import io.nearpay.sdk.utils.enums.TransactionData;
import io.nearpay.sdk.utils.listeners.CompatibilityListener;

public class CompatibilityOperation extends BaseOperation {

    public CompatibilityOperation(PluginProvider provider) {
        super(provider);
    }

    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {
        Boolean enableReceiptUi = filter.isEnableReceiptUi();
        Long finishTimeout = filter.getTimeout();
        String adminPin = filter.getAdminPin();
        Boolean enableUiDismiss = filter.isEnableUiDismiss();
        UUID jobId = filter.getJobId();
        provider.getNearpayLib().nearpay.deviceCompatibility(new CompatibilityListener() {


            @Override
            public void onDeviceCompatible() {
                Map<String, Object> paramMap = NearpayLib.ApiResponse(ErrorStatus.success_code,
                        "Device Compatible");
                sender.send(paramMap);
            }

            @Override
            public void onDeviceIncompatible(@NonNull CompatibilityFailure compatibilityFailure) {

                int status = ErrorStatus.general_failure_code;
                String message = null;
                TransactionData receipts = null;

                if (compatibilityFailure instanceof CompatibilityFailure.GeneralFailure) {
                    status = ErrorStatus.general_failure_code;
                }
                Map response = NearpayLib.ApiResponse(status, message, receipts);
                sender.send(response);

            }
        });
    }
}