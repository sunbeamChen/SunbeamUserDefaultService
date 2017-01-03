Pod::Spec.new do |s|
  s.name = 'SunbeamUserDefaultService'
  s.version = '0.1.3'
  s.summary = 'SunbeamUserDefaultService is an local data save service base on NSUserDefault.'
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"sunbeamhome"=>"chenxun1990@126.com"}
  s.homepage = 'https://github.com/sunbeamChen/SunbeamUserDefaultService'
  s.source = { :path => '.' }

  s.ios.deployment_target    = '7.0'
  s.ios.preserve_paths       = 'ios/SunbeamUserDefaultService.framework'
  s.ios.public_header_files  = 'ios/SunbeamUserDefaultService.framework/Versions/A/Headers/*.h'
  s.ios.resource             = 'ios/SunbeamUserDefaultService.framework/Versions/A/Resources/**/*'
  s.ios.vendored_frameworks  = 'ios/SunbeamUserDefaultService.framework'
end
