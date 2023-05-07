package io.nearpay.flutter.plugin.util;

import java.util.Map;
import java.util.UUID;

import io.nearpay.flutter.plugin.PluginProvider;

public class ArgsFilter {
    private PluginProvider provider;

    public ArgsFilter(PluginProvider provider) {
        this.provider = provider;
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

        return args;
    }
}
