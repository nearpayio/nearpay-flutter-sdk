package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;

import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.NearpayPlugin;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;

public class BaseOperation {
    protected PluginProvider provider;

    public BaseOperation(PluginProvider provider){
        this.provider = provider;
    }

    public void run(ArgsFilter filter, NearpaySender sender) {

    }
}
