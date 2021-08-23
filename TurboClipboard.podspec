folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'


Pod::Spec.new do |s|
  s.name             = 'TurboClipboard'
  s.version          = '0.1.0'
  s.license          = { :type => 'MIT' }
  s.homepage         = 'https://github.com/terrysahaidak/TurboClipboard'
  s.authors          = { 'Terry Sahaidak' => 'terry@sahaidak.com' }
  s.summary          = 'Test'
  s.platforms              = { :ios => "11.0" }
  s.source           = { :git => 'https://github.com/terrysahaidak/TurboClipboard.git', :tag => 'v3.1.0' }
  
  s.compiler_flags         = folly_compiler_flags + ' -Wno-nullability-completeness'
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "USE_HEADERMAP" => "YES",
    "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
    "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)/ReactCommon\" \"$(PODS_TARGET_SRCROOT)\" \"$(PODS_ROOT)/Headers/Private/React-Core\" "
  }

  s.source_files     = 'TurboClipboard.{h,mm}', 'lib/cpp-generated/**/*.{h,mm}'

  s.dependency "ReactCommon"
  s.dependency "RCTRequired"
  s.dependency "RCTTypeSafety"
  s.dependency "React-Core"
  s.dependency "React-jsi"
end
