package io.nearpay.flutter.plugin;

import androidx.annotation.NonNull;
import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.EventChannel;

import io.nearpay.flutter.plugin.operations.BaseOperation;

import io.nearpay.flutter.plugin.operations.OperatorFactory;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;

import java.util.concurrent.CompletableFuture;

/** NearpayPlugin */
public class NearpayPlugin implements FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native
    /// Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine
    /// and unregister it
    /// when the Flutter Engine is detached from the Activity
    public MethodChannel channel;
    PluginProvider provider = new PluginProvider();
    public OperatorFactory operatorFactory = new OperatorFactory(provider);
    private FlutterPluginBinding flutterPluginBinding;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        this.flutterPluginBinding = flutterPluginBinding;
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "nearpay");
        channel.setMethodCallHandler(this);
        this.provider.getNearpayLib().context = flutterPluginBinding.getApplicationContext();
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        String channelName = call.argument("channel_name").toString();

        EventChannel eChannel = new EventChannel(flutterPluginBinding.getBinaryMessenger(), channelName);

        // we use this array method because Java limit us to it
        final NearpaySender[] senderArray = new NearpaySender[1];
        CompletableFuture<NearpaySender> opPromise = new CompletableFuture<>();
        opPromise.thenAccept(sender -> {

            Map args = call.arguments();

            // filter args and put default values to them
            ArgsFilter filter = new ArgsFilter(args);

            // nearpay object isn't initialized
            // return a general error
            if (provider.getNearpayLib().nearpay == null && !(call.method.equals("initialize") ||
                    call.method.equals("setup"))) {
                Map<String, Object> paramMap = NearpayLib.commonResponse(ErrorStatus.initialise_failed_code,
                        "Plugin Initialise missing, please initialise");
                sender.send(paramMap);
                return;
            }

            BaseOperation op = operatorFactory.getOperation(call.method)
                    .orElseThrow(() -> new IllegalArgumentException("Invalid Operator"));

            op.run(filter, sender);

        });

        eChannel.setStreamHandler(new FlutterEventHandler() {
            @Override
            public void onListen(Object arguments, EventChannel.EventSink events) {
                senderArray[0] = (Object data) -> {
                    events.success(data);
                };
                opPromise.complete(senderArray[0]);
            }
        });

        result.success("");

    }

}
