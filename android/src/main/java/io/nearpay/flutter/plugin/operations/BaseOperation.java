package io.nearpay.flutter.plugin.operations;
import io.flutter.plugin.common.MethodCall;
import androidx.annotation.NonNull;

import io.nearpay.flutter.plugin.NearpayPlugin;

public class BaseOperation {
    protected NearpayPlugin nearpay;

    BaseOperation(NearpayPlugin nearpay){
        this.nearpay = nearpay;
    }

    public void run(@NonNull MethodCall call) {

    }
}
