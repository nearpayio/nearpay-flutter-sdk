package io.nearpay.flutter.plugin.common.operations;

import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;

public class BaseOperation {
    protected PluginProvider provider;

    public BaseOperation(PluginProvider provider){
        this.provider = provider;
    }

    public void run(ArgsFilter filter, NearpaySender sender) {

    }
}
