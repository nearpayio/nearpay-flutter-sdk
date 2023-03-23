package io.nearpay.flutter.plugin;

import io.flutter.plugin.common.MethodChannel.Result;

import android.content.Context;

import com.google.gson.Gson;

import java.util.Map;

import io.nearpay.sdk.NearPay;

public class ChannelManager {
    public NearPay nearPay;
    public static Result flutterResult;
    public Context context;

    protected PluginProvider provider;

    public ChannelManager(PluginProvider provider){
        this.provider = provider;
    }

    public static void sendResponse(Map<String, Object> paramMap) {
        Gson gson = new Gson();
        flutterResult.success(gson.toJson(paramMap));
    }

}
