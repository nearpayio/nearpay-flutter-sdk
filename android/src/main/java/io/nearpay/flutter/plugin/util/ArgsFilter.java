package io.nearpay.flutter.plugin.util;

import java.util.Locale;
import java.util.Map;
import java.util.UUID;

import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.sdk.Environments;

public class ArgsFilter {
    private PluginProvider provider;
    private Map savedArgs;

    public ArgsFilter(PluginProvider provider) {
        this.provider = provider;
    }

    public ArgsFilter(Map args) {
        savedArgs = args;
    }

    // return every map entry to its default
    // public Map filter(Map args) {

    // Long amount;
    // if (args.get("amount") == null) {
    // amount = 1L;
    // } else {
    // amount = Long.valueOf((Integer) args.get("amount"));
    // }
    // args.put("amount", amount);

    // Long timeout;
    // if (args.get("finishTimeout") == null) {
    // timeout = 60L;
    // } else {
    // timeout = Long.valueOf((Integer) args.get("finishTimeout"));
    // }
    // args.put("finishTimeout", timeout);

    // if (args.get("customer_reference_number") == null) {
    // args.put("customer_reference_number", "");
    // }

    // if (args.get("job_id") == null) {
    // args.put("job_id", UUID.randomUUID());
    // } else {
    // args.put("job_id", UUID.fromString(args.get("job_id").toString()));
    // }

    // if (args.get("reconciliation_uuid") == null) {
    // args.put("reconciliation_uuid", UUID.randomUUID());
    // } else {
    // args.put("reconciliation_uuid",
    // UUID.fromString(args.get("reconciliation_uuid").toString()));
    // }

    // if (args.get("enableUiDismiss") == null) {
    // args.put("enableUiDismiss", true);
    // }

    // if (args.get("enableReceiptUi") == null) {
    // args.put("enableReceiptUi", true);
    // }

    // if (args.get("enableReversal") == null) {
    // args.put("enableReversal", true);
    // }

    // if (args.get("enableEditableRefundAmountUi") == null) {
    // args.put("enableEditableRefundAmountUi", true);
    // }

    // if (args.get("page") == null || (int) args.get("page") < 1) {
    // args.put("page", 1);
    // }

    // if (args.get("limit") == null || (int) args.get("limit") < 1) {
    // args.put("limit", 30);
    // }

    // return args;
    // }

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
        return savedArgs.get("receipt") == null ? "" : (String) savedArgs.get("receipt");
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
        return savedArgs.get("customer_reference_number") == null ? "" : savedArgs.get("customer_reference_number").toString();
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

    public Environments getEnviroment() {
        String environmentStr = savedArgs.get("environment") == null ? "sandbox"
                : savedArgs.get("environment").toString();
        Environments env = environmentStr.equals("sandbox") ? Environments.SANDBOX
                : environmentStr.equals("production") ? Environments.PRODUCTION : Environments.TESTING;

        return env;
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
        return savedArgs.get("enableEditableRefundAmountUi") == null ? true : (Boolean) savedArgs.get("enableEditableRefundAmountUi");
    }

}
