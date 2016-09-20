#
#  Be sure to run `pod spec lint objcGrowingIO.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "GrowingIO"
  s.version      = "0.9.38"
  s.summary      = "GrowingIO SDK"
  s.description  = <<-DESC
                   This Pod contains GrowingIO SDK. For more informations, please read http://help.growingio.com/ (in Chinese).
                   DESC
  s.homepage     = "https://www.growingio.com/"
  s.license      = { :type => 'MIT', :text => <<-LICENSE
Copyright (c) 2016 Hao Che <chehao@growingio.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
                       LICENSE
                   }
  s.author       = { "Hao Che" => "chehao@growingio.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
# s.source       = { :git => "https://github.com/growingio/growingio-pods.git", :tag => "#{s.version}" }
  s.source       = { :http => "http://growing.ufile.ucloud.cn/sdk/GrowingIO-iOS-SDK-0.9.38-20160920205917.zip",
                     :sha1 => "fa560f566881f55b2bad30f50a77a88b0b0a26ce" }
  s.source_files  = "GrowingIO-iOS-SDK", "GrowingIO-iOS-SDK/*.h"
  s.preserve_paths = "GrowingIO-iOS-SDK/*.a"
  s.public_header_files = "GrowingIO-iOS-SDK/*.h"
  s.frameworks = "Foundation", "Security", "CoreTelephony", "SystemConfiguration", "CoreLocation"
  s.libraries = "icucore", "sqlite3"
  s.vendored_libraries = "GrowingIO-iOS-SDK/libGrowing.a"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
