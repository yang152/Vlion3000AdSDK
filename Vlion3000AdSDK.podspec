

Pod::Spec.new do |spec|

  spec.name         = "Vlion3000AdSDK"
  spec.version      = "1.0.0"
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
     ss.dependency 'Vlion3000AdSDK/VLionADSDKGDTAdapter'
     ss.dependency 'Vlion3000AdSDK/VLionADSDKKSAdapter'
     ss.dependency 'Vlion3000AdSDK/VLionADSDKMGTAdapter'
     ss.dependency 'Vlion3000AdSDK/VLionADSDKSGBAdapter'
  end
  
  spec.subspec 'VLionADSDKBDAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKBDAdapter/VLionADSDKBDAdapter.framework'
     ss.dependency 'BaiduMobAd_SDK'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKBUAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKBUAdapter/VLionADSDKBUAdapter.framework'
     ss.dependency 'Bytedance-UnionAD'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
     ss.xcconfig = {
       'VALID_ARCHS' =>  valid_archs.join(' '),
     }
  end

  
  spec.subspec 'VLionADSDKGDTAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKGDTAdapter/VLionADSDKGDTAdapter.framework'
     ss.dependency 'GDTMobSDK'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKIMBAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKIMBAdapter/VLionADSDKIMBAdapter.framework'
     ss.dependency 'InMobiSDK-China', '~> 7.4.3'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKKSAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKKSAdapter/VLionADSDKKSAdapter.framework'
     ss.dependency 'KSAdSDK'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKSGBAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKSGBAdapter/VLionADSDKSGBAdapter.framework'
     ss.dependency 'SigmobAd-iOS'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionADSDKMGTAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKMGTAdapter/VLionADSDKMGTAdapter.framework'
     
     ss.dependency 'MintegralAdSDK'
     ss.dependency 'MintegralAdSDK/NativeAd'
     ss.dependency 'MintegralAdSDK/NativeAdvancedAd'
     ss.dependency 'MintegralAdSDK/RewardVideoAd'
     ss.dependency 'MintegralAdSDK/InterstitialVideoAd'
     ss.dependency 'MintegralAdSDK/InterstitialAd'
     ss.dependency 'MintegralAdSDK/BannerAd'
     ss.dependency 'MintegralAdSDK/SplashAd'
     
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'RSGameVlionAd' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/RSGameVlionAd/RSGameVlionAd.framework'
     ss.resource = 'Vlion3000AdSDK/RSGameVlionAd/RSGameVlionAd.bundle'
     
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  
  spec.subspec 'VLionNewsSDK' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionNewsSDK/VLionNewsSDK.framework'
     
     ss.dependency 'MJRefresh'
     
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  end
  

end
