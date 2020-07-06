Pod::Spec.new do |spec|

    spec.name         = "VLionADSDKGDTAdapter"
    spec.version      = "1.1.6"
    spec.summary      = "瑞狮聚合SDK"
    
    spec.description  = <<-DESC
    瑞狮聚合SDK
    安装SDK使用下面的指令
    pod 'VLionADSDKGDTAdapter'
                   DESC

    spec.homepage     = "https://github.com/yang152/VlionPolyAdSDK"

    spec.license      = { :type => "MIT", :file => "LICENSE" }

    spec.author       = { "1062565969@qq.com" => "1062565969@qq.com" }

    spec.platform     = :ios, "9.0"

    spec.source       = { :git => "https://github.com/yang152/VlionPolyAdSDK.git", :tag => "#{spec.version}" }

    spec.vendored_frameworks = 'VLionADSDKGDTAdapter.framework'
    spec.dependency 'GDTMobSDK'
    spec.dependency 'VlionPolyAdSDK'
    valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
    
    
end
