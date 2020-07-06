Pod::Spec.new do |spec|

    spec.name         = "VlionPolyAdSDK"
    spec.version      = "1.1.7"
    spec.summary      = "瑞狮聚合SDK"
    
    spec.description  = <<-DESC
    瑞狮聚合SDK
    安装SDK使用下面的指令
    pod 'VlionPolyAdSDK'
                   DESC

    spec.homepage     = "https://github.com/yang152/VlionPolyAdSDK"

    spec.license      = { :type => "MIT", :file => "LICENSE" }

    spec.author       = { "1062565969@qq.com" => "1062565969@qq.com" }

    spec.platform     = :ios, "9.0"

    spec.source       = { :git => "https://github.com/yang152/VlionPolyAdSDK.git", :tag => "#{spec.version}" }

    spec.dependency 'VLionAdSDKPoly' , :git => 'https://github.com/yang152/VlionPolyAdSDK.git'
    spec.dependency 'VLionAdSDKPoly/VLionADSDKGDTAdapter' , :git => 'https://github.com/yang152/VlionPolyAdSDK.git'
    spec.dependency 'VLionAdSDKPoly/VLionADSDKBDAdapter' , :git => 'https://github.com/yang152/VlionPolyAdSDK.git'
    spec.dependency 'VLionAdSDKPoly/VLionADSDKIMBAdapter' , :git => 'https://github.com/yang152/VlionPolyAdSDK.git'
    spec.dependency 'VLionAdSDKPoly/VLionADSDKKSAdapter' , :git => 'https://github.com/yang152/VlionPolyAdSDK.git'
    spec.dependency 'VLionAdSDKPoly/VLionADSDKSGBAdapter' , :git => 'https://github.com/yang152/VlionPolyAdSDK.git'
    spec.dependency 'VLionAdSDKPoly/VLionADSDKBUAdapter' , :git => 'https://github.com/yang152/VlionPolyAdSDK.git'

end
