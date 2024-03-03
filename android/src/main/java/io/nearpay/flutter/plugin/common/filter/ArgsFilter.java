package io.nearpay.flutter.plugin.common.filter;

import android.annotation.SuppressLint;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.sdk.Environments;
import io.nearpay.sdk.utils.enums.NetworkConfiguration;
//import io.nearpay.sdk.utils.enums.Region;
import io.nearpay.sdk.utils.enums.UIPosition;

public class ArgsFilter {
    private PluginProvider provider;
    private Map savedArgs;

    public ArgsFilter(Map args) {
        savedArgs = args;
    }

    public String getTransactionUuid() {
        return savedArgs.get("transaction_uuid").toString();
    }

    public String getReconciliationUuid() {
        return savedArgs.get("reconciliation_uuid").toString();
    }

    public String getAdminPin() {
        return savedArgs.get("adminPin") == null ? null : savedArgs.get("adminPin").toString();
    }

    public int getPage() {
        return savedArgs.get("page") == null ? 1 : (int) savedArgs.get("page");
    }

    public int getLimit() {
        return savedArgs.get("limit") == null ? 30 : (int) savedArgs.get("limit");
    }

    public String getReceipt() {
        // this receipt could be a reconciliation or transaction receipt
        return savedArgs.get("receipt") == null ? "" : (String) savedArgs.get("receipt");
    }

    public int getReceiptWidth() {
        return savedArgs.get("receipt_width") != null ? (int) savedArgs.get("receipt_width") : 850;
    }

    public int getReceiptFontSize() {
        return savedArgs.get("receipt_font_size") != null ? (int) savedArgs.get("receipt_font_size") : 1;
    }

    public UUID getJobId() {
        if (savedArgs.get("job_id") == null) {
            return UUID.randomUUID();
        } else {
            // savedArgs.put("job_id", UUID.fromString(args.get("job_id").toString()));
            return UUID.fromString(savedArgs.get("job_id").toString());
        }
    }

    public Long getAmount() {
        Long amount;
        if (savedArgs.get("amount") == null) {
            amount = 1L;
        } else {
            amount = Long.valueOf((Integer) savedArgs.get("amount"));
        }
        return amount;
    }

    public Long getTimeout() {
        Long timeout;
        if (savedArgs.get("finishTimeout") == null) {
            timeout = 60L;
        } else {
            timeout = Long.valueOf((Integer) savedArgs.get("finishTimeout"));
        }

        return timeout;
    }

    public String getCustomerReferenceNumber() {
        return savedArgs.get("customer_reference_number") == null ? ""
                : savedArgs.get("customer_reference_number").toString();
    }

    public String getAuthType() {
        return savedArgs.get("authtype") == null ? "" : savedArgs.get("authtype").toString();
    }

    public String getAuthValue() {
        return savedArgs.get("authvalue") == null ? "" : savedArgs.get("authvalue").toString();
    }

    public String getSessionId() {
        return savedArgs.get("sessionID") == null ? "" : savedArgs.get("sessionID").toString();
    }

    public String getOriginalTransactionUuid() {
        return savedArgs.get("original_transaction_uuid").toString();
    }

    public Locale getLocale() {
        String localeStr = savedArgs.get("locale") != null ? savedArgs.get("locale").toString() : "default";
        Locale locale = localeStr.equals("default") ? Locale.getDefault() : Locale.getDefault();

        return locale;
    }

    public Environments getEnvironment() {

        Map<String, Environments> envMap = new HashMap<>();

        envMap.put("sandbox", Environments.SANDBOX);
        envMap.put("production", Environments.PRODUCTION);
        envMap.put("testing", Environments.TESTING);
        envMap.put("staging", Environments.STAGING);
        
        String environmentStr = savedArgs.get("environment") == null ? "sandbox"
                : savedArgs.get("environment").toString();


        Environments env = envMap.get((environmentStr));

        return env;
    }

    public NetworkConfiguration getNetworkConfiguration() {

        String configStr = savedArgs.get("network_configuration") == null ? "default"
                : savedArgs.get("network_configuration").toString();

        NetworkConfiguration config = configStr.equals("sim_only") ? NetworkConfiguration.SIM_ONLY
                : configStr.equals("production") ? NetworkConfiguration.SIM_PREFERRED : NetworkConfiguration.DEFAULT;

        return config;
    }

    public UIPosition getUiPosition() {

        Map<String, UIPosition> uiPosMap = new HashMap<>();

        uiPosMap.put("TOP_START", UIPosition.TOP_START);
        uiPosMap.put("TOP_END", UIPosition.TOP_END);
        uiPosMap.put("TOP_RIGHT", UIPosition.TOP_RIGHT);
        uiPosMap.put("TOP_LEFT", UIPosition.TOP_LEFT);

        uiPosMap.put("BOTTOM_START", UIPosition.BOTTOM_START);
        uiPosMap.put("BOTTOM_END", UIPosition.BOTTOM_END);
        uiPosMap.put("BOTTOM_RIGHT", UIPosition.BOTTOM_RIGHT);
        uiPosMap.put("BOTTOM_LEFT", UIPosition.BOTTOM_LEFT);

        uiPosMap.put("CENTER_START", UIPosition.CENTER_START);
        uiPosMap.put("CENTER_END", UIPosition.CENTER_END);
        uiPosMap.put("CENTER_RIGHT", UIPosition.CENTER_RIGHT);
        uiPosMap.put("CENTER_LEFT", UIPosition.CENTER_LEFT);
        uiPosMap.put("CENTER_TOP", UIPosition.CENTER_TOP);
        uiPosMap.put("CENTER_BOTTOM", UIPosition.CENTER_BOTTOM);
        uiPosMap.put("CENTER", UIPosition.CENTER);

        uiPosMap.put("DEFAULT", UIPosition.DEFAULT);

        String uiPosStr = savedArgs.get("ui_position") == null ? "DEFAULT"
                : savedArgs.get("ui_position").toString();

        UIPosition uiPos = uiPosMap.get(uiPosStr);

        if (uiPos != null)
            return uiPos;
        return UIPosition.DEFAULT;
    }

    public Boolean getLoadingUi() {
        return savedArgs.get("loading_ui") != null ? (Boolean) savedArgs.get("loading_ui") : true;
    }

    public String getArabicPaymentText() {
        return savedArgs.get("arabic_payment_text") != null ? (String) savedArgs.get("arabic_payment_text")
                : "يرجى تمرير البطاقة";
    }

    public String getEnglishPaymentText() {
        return savedArgs.get("english_payment_text") != null ? (String) savedArgs.get("english_payment_text")
                : "please tap your card";

    }
//
//    public Region getRegion() {
//        Map<String, Region> regionsMap = new HashMap<>();
//
//        regionsMap.put("SAUDI", Region.SAUDI);
//        regionsMap.put("JORDAN", Region.JORDAN);
//        regionsMap.put("AFRICA", Region.AFRICA);
//
//        String regionStr = savedArgs.get("region") != null ? (String) savedArgs.get("region")
//                : "SAUDI";
//
//        Region result = regionsMap.get(regionStr);
//
//        return result;
//    }

    @SuppressLint("NewApi")
    public LocalDateTime getStartDate() {
        // String isoDate = savedArgs.get("start_date") != null ? (String)
        // savedArgs.get("start_date") : null;
        //
        // System.out.println("from: " + isoDate);
        //
        // if(isoDate == null) return null;
        //
        // return LocalDateTime.parse(isoDate);
        return getIsoDate("start_date");
    }

    @SuppressLint("NewApi")
    public LocalDateTime getEndDate() {
        // String isoDate = savedArgs.get("end_date") != null ? (String)
        // savedArgs.get("end_date") : null;
        //
        // DateTimeFormatter formatter
        // = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
        //
        // System.out.println("to: " + isoDate);
        //
        // if(isoDate == null) return null;
        //
        // return LocalDateTime.parse(isoDate, formatter);
        //
        return getIsoDate("end_date");

    }

    public Boolean isEnableUiDismiss() {
        return savedArgs.get("enableUiDismiss") == null ? true : (Boolean) savedArgs.get("enableUiDismiss");
    }

    public Boolean isEnableReceiptUi() {
        return savedArgs.get("enableReceiptUi") == null ? true : (Boolean) savedArgs.get("enableReceiptUi");
    }

    public Boolean isEnableReversal() {
        return savedArgs.get("enableReversal") == null ? true : (Boolean) savedArgs.get("enableReversal");
    }

    public Boolean isEnableEditableRefundAmountUi() {
        return savedArgs.get("enableEditableRefundAmountUi") == null ? true
                : (Boolean) savedArgs.get("enableEditableRefundAmountUi");
    }

    @SuppressLint("NewApi")
    private LocalDateTime getIsoDate(String fieldName) {
        String isoDate = savedArgs.get(fieldName) != null ? (String) savedArgs.get(fieldName) : null;

        DateTimeFormatter formatter = DateTimeFormatter.ISO_DATE_TIME;

        if (isoDate == null)
            return null;

        return LocalDateTime.parse(isoDate, formatter);
    }

}
