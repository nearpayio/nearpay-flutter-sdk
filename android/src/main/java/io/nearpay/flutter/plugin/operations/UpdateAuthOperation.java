package io.nearpay.flutter.plugin.operations;


import java.util.HashMap;
import java.util.Map;


import io.nearpay.flutter.plugin.NearpayLib;
import io.nearpay.flutter.plugin.PluginProvider;
import io.nearpay.flutter.plugin.sender.NearpaySender;
import io.nearpay.flutter.plugin.util.ArgsFilter;
import io.nearpay.sdk.utils.enums.AuthenticationData;

public class UpdateAuthOperation extends BaseOperation {
  public UpdateAuthOperation(PluginProvider provider) {
    super(provider);
  }

  @Override
  public void run(ArgsFilter filter, NearpaySender sender) {
    String authValue = filter.getAuthValue();
    String authType = filter.getAuthType();
    AuthenticationData authData = NearpayLib.getAuthType(authType, authValue);
    provider.getNearpayLib().nearpay.updateAuthentication(authData);
    sender.send(new HashMap<>());
  }
}
