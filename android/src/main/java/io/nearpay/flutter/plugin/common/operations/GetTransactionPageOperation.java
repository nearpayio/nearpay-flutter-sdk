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
import io.nearpay.sdk.data.models.TransactionBannerList;
import io.nearpay.sdk.utils.enums.GetDataFailure;
import io.nearpay.sdk.utils.listeners.GetTransactionPageListener;

public class GetTransactionPageOperation extends BaseOperation {

    public GetTransactionPageOperation(PluginProvider provider) {
        super(provider);
    }

    @Override
    public void run(ArgsFilter filter, NearpaySender sender) {
        int page = filter.getPage();
        int limit = filter.getLimit();
        LocalDateTime from = filter.getStartDate();
        LocalDateTime to = filter.getEndDate();
        String customerReferenceNumber = filter.getCustomerReferenceNumber();

        provider.getNearpayLib().nearpay.getTransactionListPage(page, limit, from, to, customerReferenceNumber,
                new GetTransactionPageListener() {
                    @Override
                    public void onSuccess(@Nullable TransactionBannerList transactionBannerList) {
                        Map toSend = NearpayLib.ApiResponse(ErrorStatus.success_code, null, transactionBannerList);
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
