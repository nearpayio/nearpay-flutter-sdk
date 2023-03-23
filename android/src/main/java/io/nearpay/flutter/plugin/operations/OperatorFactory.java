package io.nearpay.flutter.plugin.operations;

import android.os.Build;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import io.nearpay.flutter.plugin.NearpayPlugin;

public class OperatorFactory {

    public OperatorFactory(NearpayPlugin nearpay) {
        operationMap = getOperationMap(nearpay);
    }

    Map<String, BaseOperation> operationMap;

    Map<String, BaseOperation> getOperationMap(NearpayPlugin nearpay) {
        Map<String, BaseOperation> map = new HashMap<>();
        map.put("purchase", new PurchaseOperation(nearpay));
        map.put("initialize", new InitializeOperation(nearpay));
        // more operators
        return  map;
    }

    public Optional<BaseOperation> getOperation(String operator) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            return Optional.ofNullable(operationMap.get(operator));
        } else {
            throw new IllegalArgumentException("sdk version old");
        }

    }

}
