package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import io.flutter.plugin.common.MethodCall;

import io.nearpay.flutter.plugin.NearpayPlugin;

public class PurchaseOperation extends BaseOperation{


    PurchaseOperation(NearpayPlugin nearpay) {
        super(nearpay);
    }

    @Override
    public void run(@NonNull MethodCall call) {
        nearpay.paymentValidation(call);
    }
}
