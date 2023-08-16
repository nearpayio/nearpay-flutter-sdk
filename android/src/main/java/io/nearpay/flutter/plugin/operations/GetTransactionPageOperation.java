package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;
import io.nearpay.sdk.data.models.TransactionBannerList;
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.listeners.GetTransactionListener;
import io.nearpay.sdk.utils.listeners.GetTransactionPageListener;

public class GetTransactionPageOperation extends BaseOperation {

  public GetTransactionPageOperation(PluginProvider provider) {
    super(provider);
  }

  @Override
  public void run(ArgsFilter filter, NearpaySender sender) {
    int page = filter.getPage();
    int limit = filter.getLimit();

    provider.getNearpayLib().nearpay.getTransactionListPage( page, limit, null, null, new GetTransactionPageListener() {
      @Override
      public void onSuccess(@Nullable TransactionBannerList transactionBannerList) {
        Map toSend = NearpayLib.QueryResponse(ErrorStatus.success_code, null, transactionBannerList);
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
        Map response = NearpayLib.QueryResponse(status, message, new ArrayList());
        sender.send(response);

      }
    });

  }
}
