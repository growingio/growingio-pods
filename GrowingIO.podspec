#
#  Be sure to run `pod spec lint objcGrowingIO.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GrowingIO"
  s.version      = "0.9.32"
  s.summary      = "GrowingIO SDK"
  s.description  = <<-DESC
                   This Pod contains GrowingIO SDK. For more informations, please read http://help.growingio.com/ (in Chinese).
                   DESC
  s.homepage     = "https://github.com/growingio/growingio-pods.git/"
  s.license      = 'MIT'
  s.author             = { "Hao Che" => "chehao@growingio.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
# s.source       = { :git => "https://github.com/growingio/growingio-pods.git", :tag => "#{s.version}" }
  s.source       = { :http => "http://growing.ufile.ucloud.cn/sdk/GrowingIO-iOS-SDK.zip", :sha1 => "24f206441e0a69ebd710ddf49aa30906778fd438" }
  s.source_files  = "Growing-0.9.33-2016-08-23-18-12-32", "Growing-0.9.33-2016-08-23-18-12-32/*.h"
  s.preserve_paths = "Growing-0.9.33-2016-08-23-18-12-32/*.a"
  s.public_header_files = "Growing-0.9.33-2016-08-23-18-12-32/*.h"
# s.frameworks = "Foundation", "Security", "CoreTelephony", "SystemConfiguration"
  s.libraries = "icucore", "sqlite3"
  s.vendored_libraries = "Growing-0.9.33-2016-08-23-18-12-32/libGrowing.a"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
