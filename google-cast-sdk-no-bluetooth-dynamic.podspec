Pod::Spec.new do |spec|
  spec.name         = "google-cast-sdk-no-bluetooth-dynamic"
  spec.version      = "4.4.5"
  spec.summary      = "Framework for casting content to Google Cast devices with no Bluetooth requirements (dynamically linked version)"
  spec.description  = <<-DESC
Google Cast is a screen-sharing technology that lets a user send and
control content like video from a small computing device like a phone,
tablet, or laptop to a large display device like a television.

A sender application running on the sender device uses the Google Cast
API appropriate to its operating system to discover and transmit to the
receiver application running on the receiver device. You can use the
sender APIs to enable your iOS app to send content to a large display.

Your use of Google Cast SDK is subject to, and by using or downloading any of
the related files you agree to comply with, the Google APIs Terms of Service (https://developers.google.com/terms/)
and the Google Cast SDK Additional Developer Terms of Service (https://developers.google.com/cast/docs/terms/).
                   DESC
  spec.homepage     = "https://developers.google.com/cast/"
  spec.license      = { :type => "Commercial", :text => "https://developers.google.com/terms/" }
  spec.authors      = "Google Inc."
  spec.source       = { :git => "git@github.com:egeniq/google-cast-sdk-no-bluetooth-dynamic-ios.git", :tag => "#{spec.version}" }

  spec.ios.deployment_target = "9.0"

  spec.preserve_paths       = "GoogleCastSDK-ios-4.4.5_dynamic/GoogleCast.framework"
  spec.resources            = "GoogleCastSDK-ios-4.4.5_dynamic/GoogleCast.framework/GoogleCastCoreResources.bundle", "GoogleCastSDK-ios-4.4.5_dynamic/GoogleCast.framework/GoogleCastUIResources.bundle"
  spec.vendored_frameworks  = "GoogleCastSDK-ios-4.4.5_dynamic/GoogleCast.framework"

  spec.frameworks = "Accelerate", "AudioToolbox", "AVFoundation", "CFNetwork", "CoreData", "CoreGraphics", "CoreMedia", "CoreText", "Foundation", "MediaAccessibility", "MediaPlayer", "QuartzCore", "Security", "SystemConfiguration", "UIKit"
  spec.libraries  = "c++"

  spec.dependency "Protobuf", "~> 3.0"

  spec.requires_arc = true
end
