#
#  Be sure to run `pod spec lint objcGrowingIO.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GrowingIO"
  s.version      = "0.9.20"
  s.summary      = "GrowingIO SDK"
  s.description  = <<-DESC
                   This Pod contains GrowingIO SDK. For more informations, please read http://help.growingio.com/ (in Chinese).
                   DESC
  s.homepage     = "https://github.com/growingio/growingio-pods.git/"
  s.license      = 'MIT'
  s.author             = { "Hao Che" => "chehao@growingio.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/growingio/growingio-pods.git", :tag => "0.9.20" }
  s.source_files  = "GrowingIO", "GrowingIO/*.h"
  s.preserve_paths = "GrowingIO/*.a"
  s.public_header_files = "GrowingIO/*.h"
  s.frameworks = "Foundation", "Security", "CoreTelephony", "SystemConfiguration"
  s.libraries = "icucore", "sqlite3"
  s.vendored_libraries = "GrowingIO/libGrowing.a"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
