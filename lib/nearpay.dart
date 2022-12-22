
import 'nearpay_platform_interface.dart';

class Nearpay {
  Future<dynamic> initialise(Map<String, dynamic> data) {
    return NearpayPlatform.instance.initialise(data);
  }

  Future<dynamic> purchase(Map<String, dynamic> data) {
    return NearpayPlatform.instance.purchase(data);
  }

  Future<dynamic> refund(Map<String, dynamic> data) {
    return NearpayPlatform.instance.refund(data);
  }

  Future<dynamic> reconcile(Map<String, dynamic> data) {
    return NearpayPlatform.instance.reconcile(data);
  }

  Future<dynamic> reverse(Map<String, dynamic> data) {
    return NearpayPlatform.instance.reverse(data);
  }

  Future<dynamic> logout() {
    return NearpayPlatform.instance.logout();
  }

  Future<dynamic> setup(Map<String, dynamic> data) {
    return NearpayPlatform.instance.setup(data);
  }
}

enum Environments {
    sandbox("sandbox"),
    testing("testing"),
    production("production");

    const Environments(this.value);
    final String value;
}

enum AuthenticationType{
  login("userenter"),
  email("email"),
  mobile("mobile"),
  jwt("jwt");

  const AuthenticationType(this.value);
  final String value;
}

enum Locale{
  localeDefault("default");

  const Locale(this.value);
  final String value;
}
