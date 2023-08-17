package io.nearpay.flutter.plugin.common.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Map;

import io.nearpay.flutter.plugin.common.status.ErrorStatus;
import io.nearpay.flutter.plugin.common.NearpayLib;
import io.nearpay.flutter.plugin.common.PluginProvider;
import io.nearpay.flutter.plugin.common.sender.NearpaySender;
import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
import io.nearpay.sdk.data.models.ReconciliationList;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.listeners.GetReconciliationPageListener;

public class GetReconciliationsPageOperation extends BaseOperation {
  public GetReconciliationsPageOperation(PluginProvider provider) {
    super(provider);
  }

  @Override
  public void run(ArgsFilter filter, NearpaySender sender) {
    String adminPin = filter.getAdminPin();
    int page = filter.getPage();
    int limit = filter.getLimit();
    LocalDateTime from = filter.getStartDate();
    LocalDateTime to = filter.getEndDate();


    provider.getNearpayLib().nearpay.getReconciliationListPage(page, limit, from, to,
        new GetReconciliationPageListener() {
          @Override
          public void onSuccess(@Nullable ReconciliationList reconciliationList) {
            Map toSend = NearpayLib.ApiResponse(ErrorStatus.success_code, null, reconciliationList);
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
              message = ((GetDataFailure.AuthenticationFailed) getDataFailure).getMessage();
            } else if (getDataFailure instanceof GetDataFailure.InvalidStatus) {
              status = ErrorStatus.invalid_code;
            }
            Map response = NearpayLib.ApiResponse(status, message, new ArrayList());
            sender.send(response);

          }
        });

  }
}
