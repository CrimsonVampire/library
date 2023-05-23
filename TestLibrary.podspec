Pod::Spec.new do |spec|
  spec.name         = 'TestLibrary'
  spec.version      = '0.0.1'
  spec.summary      = 'This is my first private library.'
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Flandre" => "449298939@qq.com" }
  spec.homepage     = "https://github.com/CrimsonVampire"
  spec.platform     = :ios, '11.0'
  spec.ios.deployment_target = '11.0'
  spec.source       = { :git => 'https://github.com/CrimsonVampire/library.git', :tag => spec.version.to_s }
  spec.source_files  = 'TestLibrary/**/*.{h,m}'
  spec.public_header_files = "TestLibrary/**/*.h"
  # spec.ios.vendored_framework   = 'TestLibrary.a'
  spec.ios.vendored_libraries   = 'TestLibrary.a'
end
