package io.nearpay.flutter.plugin;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.List;
import java.util.Locale;
import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

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
import io.nearpay.sdk.Environments;
import io.nearpay.sdk.NearPay;
import io.nearpay.sdk.data.models.Session;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.ReceiptUtilsKt;
import io.nearpay.sdk.utils.enums.AuthenticationData;
import io.nearpay.sdk.utils.enums.PurchaseFailure;
import io.nearpay.sdk.utils.enums.RefundFailure;
import io.nearpay.sdk.utils.enums.SessionFailure;
import io.nearpay.sdk.utils.enums.StatusCheckError;
import io.nearpay.sdk.utils.listeners.BitmapListener;
import io.nearpay.sdk.utils.listeners.PurchaseListener;
import io.nearpay.sdk.utils.listeners.RefundListener;
import io.nearpay.sdk.utils.enums.ReconcileFailure;
import io.nearpay.sdk.data.models.Merchant;
import io.nearpay.sdk.data.models.LocalizationField;
import io.nearpay.sdk.data.models.NameField;
import io.nearpay.sdk.data.models.LabelField;
import io.nearpay.sdk.data.models.ReconciliationReceipt;
import io.nearpay.sdk.data.models.ReconciliationDetails;
import io.nearpay.sdk.data.models.ReconciliationLabelField;
import io.nearpay.sdk.data.models.ReconciliationSchemes;
import io.nearpay.sdk.utils.listeners.ReconcileListener;
import io.nearpay.sdk.utils.enums.ReversalFailure;
import io.nearpay.sdk.utils.enums.LogoutFailure;
import io.nearpay.sdk.utils.listeners.LogoutListener;
import io.nearpay.sdk.utils.listeners.ReversalListener;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

import io.nearpay.sdk.utils.listeners.SessionListener;
import io.nearpay.sdk.utils.listeners.SetupListener;
import io.nearpay.sdk.utils.enums.SetupFailure;

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
        System.out.println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= channel name");
        System.out.println(channelName);

        EventChannel eChannel = new EventChannel(flutterPluginBinding.getBinaryMessenger(), channelName);

//        we use this array method because Java limit us to it
        final NearpaySender[] senderArray = new NearpaySender[1];
        CompletableFuture<NearpaySender> opPromise = new CompletableFuture<>();
        opPromise.thenAccept(sender -> {

            Map args = call.arguments();

            // filter args and put default values to them
            provider.getArgsFilter().filter(args);

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

            op.run(args, sender);

        });

        eChannel.setStreamHandler(new FlutterEventHandler(){
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
