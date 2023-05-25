Pod::Spec.new do |spec|
  spec.name         = 'FLRTestLibrary'
  spec.version      = '0.0.1'
  spec.summary      = 'This is my first private library.'
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Flandre" => "449298939@qq.com" }
  spec.homepage     = "https://github.com/CrimsonVampire"
  spec.platform     = :ios, '9.0'
  spec.ios.deployment_target = '9.0'
  # spec.source       = { :git => 'https://github.com/CrimsonVampire/library.git', :tag => spec.version.to_s }
  spec.source       = {
    http: "https://github.com/CrimsonVampire/library/releases/download/#{spec.version.to_s}/FLRTestLibrary.zip",
    sha1: 'ce9fcddfa9c8ea6120932c216dd203cb89c8dcb2'
  } 
  # spec.source_files  = 'FLRTestLibrary/**/*.h'
  # spec.public_header_files = "FLRTestLibrary/**/*.h"
  spec.ios.vendored_libraries   = 'FLRTestLibrary/libFLRTestLibrary.a'
end
