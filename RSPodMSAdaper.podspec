Pod::Spec.new do |s|

  s.name = "RSPodMSAdaper"
  
  s.version = "1.0.0"
  
  s.summary = "RSPodMSAdaper."
  
  s.homepage     = "https://github.com/yang152/RSPodMSAdaper"
  
  s.license      = { :type => "MIT", :file => "LICENSE" }
  
  s.author             = { "杨挺" => "1062565969@qq.com" }
  
  s.frameworks = ["AdSupport", "CoreLocation", "QuartzCore", "SystemConfiguration", "CoreTelephony", "Security", "StoreKit", "AVFoundation", "WebKit", "MessageUI"]
  
  s.libraries = ["z", "resolv.9", "xml2", "c++"]
  
  s.source       = { :git => "https://github.com/yang152/RSPodMSAdaper.git", :tag => "#{s.version}" }

  s.ios.deployment_target    = '9.0'
  
  s.ios.vendored_framework   = 'MSAdSDK.framework'
  
  s.resource = 'MSBundle.bundle'

end
