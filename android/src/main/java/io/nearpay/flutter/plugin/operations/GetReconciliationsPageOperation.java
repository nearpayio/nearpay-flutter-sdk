package io.nearpay.flutter.plugin.operations;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.time.LocalDateTime;
import java.time.chrono.ChronoLocalDate;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

import io.nearpay.flutter.plugin.ErrorStatus;
import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;
import io.nearpay.sdk.data.models.ReconciliationList;
import io.nearpay.sdk.data.models.TransactionBannerList;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.listeners.GetReconciliationPageListener;
import io.nearpay.sdk.utils.listeners.GetTransactionPageListener;

public class GetReconciliationsPageOperation extends BaseOperation {
  public GetReconciliationsPageOperation(PluginProvider provider) {
    super(provider);
  }

  @Override
  public void run(ArgsFilter filter, NearpaySender sender)  {
    String adminPin = filter.getAdminPin();
    int page = filter.getPage();
    int limit = filter.getLimit();
      LocalDateTime from, to;
      if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
////           from = LocalDateTime.of(2023,8,13,1,1);
//           to = LocalDateTime.of(2023,8,17,1,1);
//    LocalDateTime.
          from = null;
          to = null;
          provider.getNearpayLib().nearpay.getReconciliationListPage( page, limit, from, to,
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
      System.out.println("i am here");


  }
}
