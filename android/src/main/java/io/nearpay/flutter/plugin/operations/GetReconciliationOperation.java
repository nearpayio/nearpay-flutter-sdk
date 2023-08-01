package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;
import io.nearpay.sdk.data.models.ReconciliationReceipt;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.enums.ReconcileFailure;
import io.nearpay.sdk.utils.listeners.GetReconcileListener;

public class GetReconciliationOperation extends BaseOperation {
  public GetReconciliationOperation(PluginProvider provider) {
    super(provider);
  }

  @Override
  public void run(Map args, NearpaySender sender) {
    ArgsFilter filter = new ArgsFilter(args);
    String reconUuid = filter.getReconciliationUuid();

    provider.getNearpayLib().nearpay.getReconciliationByUuid(reconUuid,  new GetReconcileListener() {

      @Override
      public void onSuccess(@Nullable ReconciliationReceipt reconciliationReceipt) {
        Map toSend = NearpayLib.QueryResponse(ErrorStatus.success_code, null, reconciliationReceipt);
        sender.send(toSend);

      }

      @Override
      public void onFailure(@NonNull GetDataFailure getDataFailure) {
        int status = ErrorStatus.general_failure_code;
        String message = null;

        if (getDataFailure instanceof GetDataFailure.FailureMessage) {
          status = ErrorStatus.failure_code;
          message = ((GetDataFailure.FailureMessage) getDataFailure).getMessage();

        } else if (getDataFailure instanceof GetDataFailure.AuthenticationFailed) {
          status = ErrorStatus.auth_failed_code;
        } else if (getDataFailure instanceof GetDataFailure.InvalidStatus) {
          status = ErrorStatus.auth_failed_code;
        }
        Map response = NearpayLib.QueryResponse(status, message, new HashMap<>());
        sender.send(response);

      }

    });

  }
}
