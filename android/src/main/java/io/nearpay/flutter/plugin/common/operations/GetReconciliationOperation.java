package io.nearpay.flutter.plugin.common.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.HashMap;
import java.util.Map;

import io.nearpay.flutter.plugin.common.status.ErrorStatus;
import io.nearpay.flutter.plugin.common.NearpayLib;
import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
import io.nearpay.sdk.data.models.ReconciliationReceipt;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.listeners.GetReconcileListener;

public class GetReconciliationOperation extends BaseOperation {
  public GetReconciliationOperation(PluginProvider provider) {
    super(provider);
  }

  @Override
  public void run(ArgsFilter filter, NearpaySender sender) {
    String reconUuid = filter.getReconciliationUuid();
    long finishTimeOut = filter.getTimeout();
    boolean enableReceiptUi = filter.isEnableReceiptUi();

    provider.getNearpayLib().nearpay.getReconciliationByUuid(reconUuid, enableReceiptUi, finishTimeOut,  new GetReconcileListener() {

      @Override
      public void onSuccess(@Nullable ReconciliationReceipt reconciliationReceipt) {
        Map toSend = NearpayLib.ApiResponse(ErrorStatus.success_code, null, reconciliationReceipt);
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
        Map response = NearpayLib.ApiResponse(status, message, new HashMap<>());
        sender.send(response);

      }

    });

  }
}
