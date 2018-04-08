#
#  Be sure to run `pod spec lint objcGrowingIO.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = 'GrowingIO'
  s.version      = '2.3.1'
  s.summary      = 'GrowingIO Tracking SDK'
  s.description  = <<-DESC
                   This Pod contains GrowingIO SDK. For more informations, please read http://help.growingio.com/ (in Chinese).
                   DESC
  s.homepage     = 'https://www.growingio.com/'
  s.license      = { type: 'MIT', text: <<-LICENSE
Copyright (c) 2015-2018 GrowingIO <support@growingio.com>

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
  s.author       = { 'GrowingIO' => 'support@growingio.com' }
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
# s.source       = { :git => "https://github.com/growingio/growingio-pods.git", :tag => "#{s.version}" }
  s.source       = { http: 'https://assets.growingio.com/sdk/GrowingIO-iOS-SDK-2.3.1.zip',
                     sha1: 'ddcde5e4eb8a44f7e77d089b09949990502a6221' }
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

  source_files =
    'GrowingIO-iOS-SDK',
    'GrowingIO-iOS-SDK/*.h'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = source_files
    core.public_header_files = 'GrowingIO-iOS-SDK/*.h'
    core.frameworks = 'Foundation', 'Security', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation', 'AdSupport'
    core.preserve_paths = 'GrowingIO-iOS-SDK/*.a'
    core.libraries = 'icucore', 'sqlite3'
    core.vendored_libraries = 'GrowingIO-iOS-SDK/libGrowing.a'
  end

  s.subspec 'without-IDFA' do |idfa|
    idfa.source_files = source_files
    idfa.public_header_files = 'GrowingIO-iOS-SDK/*.h'
    idfa.frameworks = 'Foundation', 'Security', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation'
    idfa.preserve_paths = 'GrowingIO-iOS-SDK/*.a'
    idfa.libraries = 'icucore', 'sqlite3'
    idfa.vendored_libraries = 'GrowingIO-iOS-SDK/libGrowing.a'
  end
end
