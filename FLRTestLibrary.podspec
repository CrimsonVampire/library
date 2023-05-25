Pod::Spec.new do |spec|
  spec.name         = 'FLRTestLibrary'
  spec.version      = '0.0.2'
  spec.summary      = 'This is my first private library.'
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Flandre" => "449298939@qq.com" }
  spec.homepage     = "https://github.com/CrimsonVampire"
  spec.platform     = :ios, '9.0'
  spec.ios.deployment_target = '9.0'
  spec.source       = { :git => 'https://github.com/CrimsonVampire/library.git', :tag => spec.version.to_s }
  # spec.source       = {
  #   http: "https://github.com/CrimsonVampire/library/releases/download/#{spec.version.to_s}/FLRTestLibrary.zip",
  #   sha1: '37b344fe2e0cfd417eeb189fc0095966f74e9408'
  # } 
  spec.source_files  = 'FLRTestLibrary/lib/**/*.h'
  spec.public_header_files = "FLRTestLibrary/lib/**/*.h"
  spec.ios.vendored_libraries   = 'FLRTestLibrary/lib/libFLRTestLibrary.a'
  spec.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
