Pod::Spec.new do |s|
  s.name             = 'SunbeamUserDefaultService'
  s.version          = '0.1.1'
  s.summary          = 'SunbeamUserDefaultService is an local data save service base on NSUserDefault.'
  s.homepage         = 'https://github.com/sunbeamChen/SunbeamUserDefaultService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sunbeamhome' => 'chenxun1990@126.com' }
  s.source           = { :git => 'https://github.com/sunbeamChen/SunbeamUserDefaultService.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'SunbeamUserDefaultService/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
end
