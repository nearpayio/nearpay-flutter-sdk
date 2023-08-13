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
import io.nearpay.sdk.data.models.TransactionReceipt;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.enums.TransactionData;
import io.nearpay.sdk.utils.listeners.GetTransactionListener;

public class GetTransactionOperation extends BaseOperation {

  public GetTransactionOperation(PluginProvider provider) {
    super(provider);

  }

  @Override
  public void run(ArgsFilter filter, NearpaySender sender) {
    String trUuid = filter.getTransactionUuid();

    provider.getNearpayLib().nearpay.getTransactionByUuid(trUuid, new GetTransactionListener() {
      @Override
      public void onSuccess(@NonNull TransactionData transactionData) {
        Map toSend = NearpayLib.QueryResponse(ErrorStatus.success_code, null, transactionData);
        sender.send(toSend);

      }

      @Override
      public void onFailure(@NonNull GetDataFailure getDataFailure) {
        int status = ErrorStatus.general_failure_code;
        String message = null;
        List<TransactionReceipt> receipts = null;

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

      //      @Override
//      public void onSuccess(@Nullable List<TransactionReceipt> list) {
//        Map toSend = NearpayLib.QueryResponse(ErrorStatus.success_code, null, list);
//        sender.send(toSend);
//      }

//      @Override
//      public void onFailure(@NonNull GetTransactionFailure getTransactionFailure) {
//        int status = ErrorStatus.general_failure_code;
//        String message = null;
//        List<TransactionReceipt> receipts = null;
//
//        if (getTransactionFailure instanceof GetTransactionFailure.InvalidAdminPin) {
//          status = ErrorStatus.invalid_admin_pin;
//        } else if (getTransactionFailure instanceof GetTransactionFailure.FailureMessage) {
//          status = ErrorStatus.failure_code;
//          message = ((GetTransactionFailure.FailureMessage) getTransactionFailure).getMessage();
//        } else if (getTransactionFailure instanceof GetTransactionFailure.AuthenticationFailed) {
//          status = ErrorStatus.auth_failed_code;
//          message = ((GetTransactionFailure.AuthenticationFailed) getTransactionFailure).getMessage();
//        } else if (getTransactionFailure instanceof GetTransactionFailure.InvalidStatus) {
//          status = ErrorStatus.invalid_code;
//        }
//        Map response = NearpayLib.QueryResponse(status, message, new ArrayList());
//        sender.send(response);
//
//      }
    });
  }
}
