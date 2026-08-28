#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# This is a stub podspec for iOS builds - nearpay_flutter_sdk is Android-only
#
Pod::Spec.new do |s|
  s.name             = 'nearpay_flutter_sdk'
  s.version          = '0.0.1'
  s.summary          = 'NearPay Flutter SDK - Android only (stub for iOS)'
  s.description      = <<-DESC
This is a stub podspec for iOS builds. NearPay Flutter SDK is Android-only.
                       DESC
  s.homepage         = 'https://github.com/nearpayio/nearpay-flutter-sdk'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'NearPay' => 'info@nearpay.io' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
