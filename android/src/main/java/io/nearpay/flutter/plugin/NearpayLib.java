package io.nearpay.flutter.plugin;

import android.content.Context;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import io.nearpay.sdk.NearPay;
import io.nearpay.sdk.data.models.ReconciliationReceipt;
import io.nearpay.sdk.data.models.Session;
import io.nearpay.sdk.utils.enums.AuthenticationData;
import io.nearpay.sdk.utils.enums.TransactionData;

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

    public static Map<String, Object> commonResponse(int responseCode, String message) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        return paramMap;
    }

    public static Map<String, Object> ApiResponse(int responseCode, String message, TransactionData receipts) {
        Map<String, Object> paramMap = new HashMap<>();
        Object transactionListJson = classToMap(receipts);
//        if(receipts != null){
//            for (TransactionReceipt transReceipt : receipts) {
//                Gson gson = new Gson(); // Or use new GsonBuilder().create();
//                String json = gson.toJson(transReceipt); // serializes target to Json
//                transactionListJson.add(NearpayLib.JSONStringToMap(json));
//            }
//        }


        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        paramMap.put("receipts", transactionListJson);
        return paramMap;
    }


    public static Map<String, Object> ReconcileResponse(int responseCode, String message, List<ReconciliationReceipt> receipts) {
        Map<String, Object> paramMap = new HashMap<>();
        List<Map<String, Object>> reconcileListJson = new ArrayList<>();
        if(receipts != null){
            for (ReconciliationReceipt reconcileReceipt : receipts) {
                Gson gson = new Gson(); // Or use new GsonBuilder().create();
                String json = gson.toJson(reconcileReceipt); // serializes target to Json
                reconcileListJson.add(NearpayLib.JSONStringToMap(json));
            }
        }


        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        paramMap.put("receipts", reconcileListJson);
        return paramMap;
    }

    public static Map<String, Object> QueryResponse(int responseCode, String message,
                                                    Object toSend) {
        Map<String, Object> paramMap = new HashMap<>();

        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        paramMap.put("result", classToMap(toSend));
        return paramMap;
    }


    public static Map<String, Object> SessionResponse(int responseCode, String message, Session session){
        Map<String, Object> paramMap = new HashMap<>();
        Map<String, Object> sessionJson = new HashMap<>();
        if(session != null){
            Gson gson = new Gson(); // Or use new GsonBuilder().create();
            String json = gson.toJson(session); // serializes target to Json return
            sessionJson = NearpayLib.JSONStringToMap(json);

        }


        paramMap.put("status", responseCode);
        paramMap.put("message", message);
        paramMap.put("session", sessionJson);
        return paramMap;
    }

    public static Map<String, Object> JSONStringToMap(String jsonStr) {
        Map<String, Object> data = new Gson().fromJson(jsonStr, HashMap.class);
        return data;
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
