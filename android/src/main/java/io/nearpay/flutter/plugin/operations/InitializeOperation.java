package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import io.flutter.plugin.common.MethodCall;

import java.util.Locale;
import java.util.Map;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayPlugin;
import io.nearpay.sdk.Environments;
import io.nearpay.sdk.NearPay;

public class InitializeOperation extends BaseOperation {

    InitializeOperation(NearpayPlugin nearpay) {
        super(nearpay);
    }

    @Override
    public void run(@NonNull MethodCall call) {
        nearpay.doInitialization(call);
    }
}
