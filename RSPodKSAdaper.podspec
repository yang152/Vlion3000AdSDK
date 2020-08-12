Pod::Spec.new do |s|
  s.name = "RSPodKSAdaper"
  s.version = "3.2.2.2"
  s.summary = "RSPodKSAdaper."
  s.authors = {"chenyun"=>"chenyun@kuaishou.com"}
  s.homepage = "https://ssp.e.kuaishou.com/"
  s.frameworks = ["Foundation", "UIKit", "MobileCoreServices", "CoreGraphics", "Security", "SystemConfiguration", "CoreTelephony", "AdSupport", "CoreData", "StoreKit", "AVFoundation", "MediaPlayer", "CoreMedia", "WebKit", "Accelerate", "CoreLocation", "AVKit", "MessageUI", "QuickLook", "AddressBook"]
  s.libraries = ["z", "resolv.9", "sqlite3", "c++", "c++abi"]
  s.source = { :http => 'https://static.yximgs.com/udata/pkg/KSAdSDKTarGz/KSAdSDK-framework-3.2.2-136.tar.gz' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'KSAdSDK.framework'
  
  s.resources = ['KSAdSDK.framework/CU.bundle', 'KSAdSDK.framework/KSAdSDK.bundle']

end
