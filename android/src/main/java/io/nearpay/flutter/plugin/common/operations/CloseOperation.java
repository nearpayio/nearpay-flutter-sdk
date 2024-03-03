package io.nearpay.flutter.plugin.common.operations;

import androidx.annotation.NonNull;

import java.util.Map;

import io.nearpay.flutter.plugin.common.NearpayLib;
import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.status.ErrorStatus;
import io.nearpay.sdk.utils.enums.LogoutFailure;
import io.nearpay.sdk.utils.listeners.LogoutListener;

public class CloseOperation extends BaseOperation {
    public CloseOperation(PluginProvider provider) { super(provider); }

    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {
        provider.getNearpayLib().nearpay.close();
    }
}
