package io.nearpay.flutter.plugin.util;

import java.util.Map;
import java.util.UUID;

import io.nearpay.flutter.plugin.PluginProvider;

public class ArgsFilter {
    private PluginProvider provider;
    private Map savedArgs;

    public ArgsFilter(PluginProvider provider) {
        this.provider = provider;
    }

    public ArgsFilter(Map args) {
        savedArgs =args;
    }

    // return every map entry to its default
    public Map filter(Map args) {

        Long amount;
        if (args.get("amount") == null) {
            amount = 1L;
        } else {
            amount = Long.valueOf((Integer) args.get("amount"));
        }
        args.put("amount", amount);

        Long timeout;
        if (args.get("finishTimeout") == null) {
            timeout = 60L;
        } else {
            timeout = Long.valueOf((Integer) args.get("finishTimeout"));
        }
        args.put("finishTimeout", timeout);

        if (args.get("customer_reference_number") == null) {
            args.put("customer_reference_number", "");
        }

        if (args.get("transaction_uuid") == null) {
            args.put("transaction_uuid", UUID.randomUUID());
        } else {
            args.put("transaction_uuid", UUID.fromString(args.get("transaction_uuid").toString()));
        }

        if (args.get("enableUiDismiss") == null) {
            args.put("enableUiDismiss", true);
        }

        if (args.get("enableReceiptUi") == null) {
            args.put("enableReceiptUi", true);
        }

        if (args.get("enableReversal") == null) {
            args.put("enableReversal", true);
        }

        if (args.get("enableEditableRefundAmountUi") == null) {
            args.put("enableEditableRefundAmountUi", true);
        }


        if (args.get("page") == null || (int) args.get("page") < 1) {
            args.put("page", 1);
        }

        if (args.get("limit") == null || (int) args.get("limit") < 1) {
            args.put("limit", 30);
        }

        return args;
    }

    public String getTransactionUuid() {
        return savedArgs.get("transaction_uuid").toString();
    }

    public String getReconciliationUuid() {
        return savedArgs.get("reconciliation_uuid").toString();
    }


    public String getAdminPin(){
        return savedArgs.get("adminPin") == null ? null : savedArgs.get("adminPin").toString();
    }

    public int getPage(){
        return savedArgs.get("page") == null ? 1 : (int) savedArgs.get("page");
    }
    public int getLimit(){
        return savedArgs.get("limit") == null ? 30 : (int) savedArgs.get("limit");
    }

}
