//package io.nearpay.flutter.plugin.common.operations;
//
//import androidx.annotation.NonNull;
//
//import java.util.Map;
//
//import io.nearpay.flutter.plugin.common.NearpayLib;
//import io.nearpay.flutter.plugin.common.PluginProvider;
//import io.nearpay.flutter.plugin.common.filter.ArgsFilter;
//import io.nearpay.flutter.plugin.common.sender.NearpaySender;
//import io.nearpay.flutter.plugin.common.status.ErrorStatus;
//import io.nearpay.sdk.data.models.SessionInfo;
//import io.nearpay.sdk.utils.enums.SessionFailure;
//import io.nearpay.sdk.utils.listeners.CheckSessionListener;
//
//public class GetUserSessionOperation extends BaseOperation {
//    public GetUserSessionOperation(PluginProvider provider) {
//        super(provider);
//    }
//
//    @Override
//    public void run(ArgsFilter filter, NearpaySender sender) {
//
//        provider.getNearpayLib().nearpay.getUserSession(new CheckSessionListener() {
//            @Override
//            public void onSessionFree() {
//                Map toSend = NearpayLib.ApiResponse(ErrorStatus.success_code, null,);
//                sender.send(toSend);
//            }
//
//            @Override
//            public void onSessionFailed(@NonNull SessionFailure sessionFailure) {
//
//            }
//
//            @Override
//            public void onSessionBusy(@NonNull String s) {
//
//            }
//
//            @Override
//            public void getSessionInfo(@NonNull SessionInfo sessionInfo) {
//
//            }
//        });
//    }
//}
