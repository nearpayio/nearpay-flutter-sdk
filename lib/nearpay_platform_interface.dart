import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nearpay_method_channel.dart';

abstract class NearpayPlatform extends PlatformInterface {
  /// Constructs a NearpayPlatform.
  NearpayPlatform() : super(token: _token);

  static final Object _token = Object();

  static NearpayPlatform _instance = MethodChannelNearpay();

  /// The default instance of [NearpayPlatform] to use.
  ///
  /// Defaults to [MethodChannelNearpay].
  static NearpayPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NearpayPlatform] when
  /// they register themselves.
  static set instance(NearpayPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<dynamic> initialise(Map<String, dynamic> data ) {
    throw UnimplementedError('initialise() has not been implemented.');
  }

  Future<dynamic> purchase(Map<String, dynamic> data ) {
    throw UnimplementedError('purchase() has not been implemented.');
  }

  Future<dynamic> refund(Map<String, dynamic> data ) {
    throw UnimplementedError('refund() has not been implemented.');
  }

  Future<dynamic> reconcile(Map<String, dynamic> data ) {
    throw UnimplementedError('reconcile() has not been implemented.');
  }

  Future<dynamic> reverse(Map<String, dynamic> data ) {
    throw UnimplementedError('reverse() has not been implemented.');
  }

  Future<dynamic> logout() {
    throw UnimplementedError('logout() has not been implemented.');
  }

  Future<dynamic> setup(Map<String, dynamic> data ) {
    throw UnimplementedError('setup() has not been implemented.');
  }
} 