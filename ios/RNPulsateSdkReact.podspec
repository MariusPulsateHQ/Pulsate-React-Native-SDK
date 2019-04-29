
Pod::Spec.new do |s|
  s.name         = "RNPulsateSdkReact"
  s.version      = "1.1.0"
  s.summary      = "Pulsate React SDK"

  s.homepage     = "http://pulsatehq.com/"

  s.license      = 'Commercial'
  s.author       = { "Pulsate" => "http://pulsatehq.com/" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/PulsateHQ/Pulsate-React-Native-SDK.git", :tag => "master" }
  s.source_files  = "RNPulsateSdkReact/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency 'PULPulsate'
  #s.dependency "others"

end

  