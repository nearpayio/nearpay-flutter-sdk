#import "NearpayPlugin.h"

@implementation NearpayPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  // Stub implementation - NearPay is Android-only
  // This is here to satisfy Flutter's plugin registration
  // No actual functionality is needed on iOS
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  // Return not implemented for all method calls
  result(FlutterMethodNotImplemented);
}

@end
