package io.nearpay.flutter.plugin.operations;

import io.flutter.plugin.common.MethodCall;
import androidx.annotation.NonNull;

import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.NearpayPlugin;
import io.nearpay.flutter.plugin.PluginProvider;

public class BaseOperation {
    protected PluginProvider provider;

    public BaseOperation(PluginProvider provider){
        this.provider = provider;
    }

    public void run(Map args, CompletableFuture<Map> promise) {

    }
}
