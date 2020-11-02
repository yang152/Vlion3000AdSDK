

Pod::Spec.new do |spec|

  spec.name         = "Vlion3000AdSDK"
  spec.version      = "3.7.9.5"
  spec.summary      = "Vlion3000AdSDK."

  spec.description  = <<-DESC
              TopOn SDK for developer
                   DESC

  spec.homepage     = "https://github.com/yang152/Vlion3000AdSDK"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "杨挺" => "1062565969@qq.com" }


  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = '9.0'
  spec.requires_arc = true
  valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
  spec.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'
  
  spec.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  spec.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'
  
  spec.default_subspecs = 'Vlion3000AdSDK'
  spec.source       = { :git => "https://github.com/yang152/Vlion3000AdSDK.git", :tag => "#{spec.version}" }
  
  spec.subspec 'Vlion3000AdSDK' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDK/VLionADSDK.framework'
     ss.resource = 'Vlion3000AdSDK/VLionADSDK/VLionAdImg.bundle'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLion3000ADSDKBLK' do |ss|
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKBLK/VLionADSDKBLK.framework'
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.dependency 'GDTMobSDK'
     ss.dependency 'RSPodKSAdaper'
     ss.dependency 'SigmobAd-iOS'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
     ss.pod_target_xcconfig = { 'skip_validation' => true }
  end
  
  spec.subspec 'VLion3000ADSDKBDAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKBDAdapter/VLionADSDKBDAdapter.framework'
     ss.dependency 'BaiduMobAd_SDK'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLion3000ADSDKGDTAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKGDTAdapter/VLionADSDKGDTAdapter.framework'
     ss.dependency 'GDTMobSDK'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLion3000ADSDKKSAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKKSAdapter/VLionADSDKKSAdapter.framework'
     ss.dependency 'RSPodKSAdaper'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
     ss.pod_target_xcconfig = { 'skip_validation' => true }
  end
  
    spec.subspec 'VLion3000ADSDKJDAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKJDAdapter/VLionADSDKJDAdapter.framework'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
     ss.frameworks = ["SafariServices", "CoreLocation", "MapKit", "AdSupport", "CoreTelephony", "SystemConfiguration", "WebKit", "ImageIO", "Accelerate", "Photos", "AssetsLibrary", "CoreServices"]
     ss.libraries = ["z", "sqlite3"]
     ss.resource = 'Vlion3000AdSDK/VLionADSDKJDAdapter/JADYun.bundle'
  end
  
  spec.subspec 'VLion3000ADSDKMGTAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKMGTAdapter/VLionADSDKMGTAdapter.framework'
     ss.dependency 'MintegralAdSDK'
     ss.dependency 'MintegralAdSDK/NativeAdvancedAd'
     ss.dependency 'MintegralAdSDK/RewardVideoAd'
     ss.dependency 'MintegralAdSDK/InterstitialVideoAd'
     ss.dependency 'MintegralAdSDK/BannerAd'
     ss.dependency 'MintegralAdSDK/SplashAd'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLion3000ADSDKBUAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKBUAdapter/VLionADSDKBUAdapter.framework'
     ss.dependency 'Bytedance-UnionAD'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
     ss.xcconfig = {
       'VALID_ARCHS' =>  valid_archs.join(' '),
     }
  end
  
  spec.subspec 'VLion3000ADSDKIMBAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKIMBAdapter/VLionADSDKIMBAdapter.framework'
     ss.dependency 'InMobiSDK-China', '~> 7.4.3'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'RSGameVlion3000Ad' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/RSGameVlionAd/RSGameVlionAd.framework'
     ss.resource = 'Vlion3000AdSDK/RSGameVlionAd/RSGameVlionAd.bundle'
     
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLion3000NewsSDK' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionNewsSDK/VLionNewsSDK.framework'
     
     ss.dependency 'MJRefresh'
     
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  

end
