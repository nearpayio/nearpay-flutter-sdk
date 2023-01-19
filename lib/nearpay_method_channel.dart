import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nearpay_platform_interface.dart';

/// An implementation of [NearpayPlatform] that uses method channels.
class MethodChannelNearpay extends NearpayPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nearpay');

  @override
  Future<dynamic> initialize(Map<dynamic, dynamic> data) async {
    final response = await methodChannel.invokeMethod<dynamic>('initialize',data);
    return response;
  }

  @override
  Future<dynamic> purchase(Map<dynamic, dynamic> data) async {
    final response = await methodChannel.invokeMethod<dynamic>('purchase',data);
    return response;
  }

  @override
  Future<dynamic> refund(Map<dynamic, dynamic> data) async {
    final response = await methodChannel.invokeMethod<dynamic>('refund',data);
    return response;
  }

  @override
  Future<dynamic> reconcile(Map<dynamic, dynamic> data) async {
    final response = await methodChannel.invokeMethod<dynamic>('reconcile',data);
    return response;
  }

  @override
  Future<dynamic> reverse(Map<dynamic, dynamic> data) async {
    final response = await methodChannel.invokeMethod<dynamic>('reverse',data);
    return response;
  }

  @override
  Future<dynamic> logout() async {
    final response = await methodChannel.invokeMethod<dynamic>('logout');
    return response;
  }

  @override
  Future<dynamic> setup(Map<dynamic, dynamic> data ) async {
    final response = await methodChannel.invokeMethod<dynamic>('setup',data);
    return response;
  }

  
}


