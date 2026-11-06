package io.nearpay.flutter.plugin.common;

import android.content.Context;

import com.google.gson.Gson;

import java.util.HashMap;
import java.util.Map;

import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.sdk.NearPay;
import io.nearpay.sdk.utils.enums.AuthenticationData;

public class NearpayLib {
    private PluginProvider provider;
    public NearPay nearpay;
    public Context context;

    public String authTypeShared = "";
    public String authValueShared = "";

    public NearpayLib(PluginProvider provider) {
        this.provider = provider;
    }

    public static AuthenticationData getAuthType(String authType, String inputValue) {
        AuthenticationData authentication = authType.equals("userenter") ? AuthenticationData.UserEnter.INSTANCE
                : authType.equals("email") ? new AuthenticationData.Email(inputValue)
                        : authType.equals("mobile") ? new AuthenticationData.Mobile(inputValue)
                                : authType.equals("jwt") ? new AuthenticationData.Jwt(inputValue)
                                        : AuthenticationData.UserEnter.INSTANCE;
        return authentication;
    }

    public boolean isAuthInputValidation(String authType, String inputValue) {
        boolean isAuthValidate = authType.equals("userenter") ? true : inputValue == "" ? false : true;
        return isAuthValidate;
    }


    public static Map<String, Object> ApiResponse(int responseCode, String message, Object data) {
        Map<String, Object> paramMap = new HashMap<>();

        Object dataFiltered = data == null ? new HashMap<>() : data;

        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        paramMap.put("result", classToMap(dataFiltered));
        return paramMap;
    }

    public static Map<String, Object> ApiResponse(int responseCode, String message) {
        return  ApiResponse(responseCode, message, new HashMap<>());
    }

    public static Object classToMap(Object obj) {
        // return default hashmap for empty given obj
        if (obj == null) {
            return  new HashMap<>();
        }

        Map tempConvertor = new HashMap<>();
        tempConvertor.put("__", obj);

        Gson gson = new Gson();
        String inString = gson.toJson(tempConvertor);
        Map asMap = gson.fromJson(inString, HashMap.class);
        return asMap.get("__");
    }


}
