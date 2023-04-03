package io.nearpay.flutter.plugin;

import android.content.Context;

import androidx.annotation.NonNull;

import com.google.gson.Gson;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import io.nearpay.sdk.Environments;
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

    public AuthenticationData getAuthType(String authType, String inputValue) {
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

    public static Map<String, Object> commonResponse(int responseCode, String message) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        return paramMap;
    }

    public static Map<String, Object> JSONStringToMap(String jsonStr) {
        Map<String, Object> data = new Gson().fromJson(jsonStr, HashMap.class);
        return data;
    }

}
