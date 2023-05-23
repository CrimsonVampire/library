Pod::Spec.new do |s|
  s.name = "TestLibrary"
  s.version = "0.0.1"
  s.summary = "This is my first private library."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"Flandre"=>"449298939@qq.com"}
  s.homepage = "https://github.com/CrimsonVampire"
  s.source = { :path => '.' }

  s.ios.deployment_target    = '11.0'
  s.ios.vendored_framework   = 'ios/TestLibrary.framework'
end
