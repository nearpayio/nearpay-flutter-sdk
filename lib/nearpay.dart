
import 'nearpay_platform_interface.dart';

class Nearpay {

  enum Environments {
    sandbox("sandbox"),
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

  Future<dynamic> initialize(Map<dynamic, dynamic> data) {
    return NearpayPlatform.instance.initialize(data);
  }

  Future<dynamic> purchase(Map<dynamic, dynamic> data) {
    return NearpayPlatform.instance.purchase(data);
  }

  Future<dynamic> refund(Map<dynamic, dynamic> data) {
    return NearpayPlatform.instance.refund(data);
  }

  Future<dynamic> reconcile(Map<dynamic, dynamic> data) {
    return NearpayPlatform.instance.reconcile(data);
  }

  Future<dynamic> reverse(Map<dynamic, dynamic> data) {
    return NearpayPlatform.instance.reverse(data);
  }

  Future<dynamic> logout() {
    return NearpayPlatform.instance.logout();
  }

  Future<dynamic> setup(Map<dynamic, dynamic> data) {
    return NearpayPlatform.instance.setup(data);
  }
}


