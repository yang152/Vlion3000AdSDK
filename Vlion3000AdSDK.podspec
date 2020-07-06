

Pod::Spec.new do |spec|

  spec.name         = "Vlion3000AdSDK"
  spec.version      = "1.0.5"
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
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKGDTAdapter/VLionADSDKGDTAdapter.framework'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKKSAdapter/VLionADSDKKSAdapter.framework'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKSGBAdapter/VLionADSDKSGBAdapter.framework'
     ss.resource = 'Vlion3000AdSDK/VLionADSDK/VLionAdImg.bundle'
     ss.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
     ss.dependency 'GDTMobSDK'
     ss.dependency 'KSAdSDK'
     ss.dependency 'SigmobAd-iOS'
  end
  
  spec.subspec 'VLion3000ADSDKBDAdapter' do |ss|
     ss.dependency 'Vlion3000AdSDK/Vlion3000AdSDK'
     ss.ios.deployment_target = '9.0'
     ss.vendored_frameworks = 'Vlion3000AdSDK/VLionADSDKBDAdapter/VLionADSDKBDAdapter.framework'
     ss.dependency 'BaiduMobAd_SDK'
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
