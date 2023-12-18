package io.nearpay.flutter.plugin.common.operations;

import android.os.Build;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import io.nearpay.flutter.plugin.common.PluginProvider;

public class OperatorFactory {
    private PluginProvider provider;

    public OperatorFactory(PluginProvider provider) {
        this.provider = provider;
        operationMap = getOperationMap();
    }

    Map<String, BaseOperation> operationMap;

    Map<String, BaseOperation> getOperationMap() {
        Map<String, BaseOperation> map = new HashMap<>();
        map.put("purchase", new PurchaseOperation(provider));
        map.put("initialize", new InitializeOperation(provider));
        map.put("refund", new RefundOperation(provider));
        map.put("reconcile", new ReconciliationOperation(provider));
        map.put("reverse", new ReverseOperation(provider));
        map.put("logout", new LogoutOperation(provider));
        map.put("setup", new SetupOperation(provider));
        map.put("session", new SessionOperation(provider));
        map.put("updateAuthentication", new UpdateAuthOperation(provider));
        map.put("getReconciliation", new GetReconciliationOperation(provider));
        map.put("getReconciliationsList", new GetReconciliationsPageOperation(provider));
        map.put("getTransaction", new GetTransactionOperation(provider));
        map.put("getTransactionsList", new GetTransactionPageOperation(provider));
        map.put("receiptToImage", new ReceiptToImageOperation(provider));
        map.put("reconciliationReceiptToImage", new ReconciliationReceiptToImageOperation(provider));

        return map;
    }

    public Optional<BaseOperation> getOperation(String operator) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            return Optional.ofNullable(operationMap.get(operator));
        } else {
            throw new IllegalArgumentException("sdk version old");
        }

    }

}
