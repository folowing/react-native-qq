require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/reactnativecn/react-native-qq", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'

  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
  s.library = 'sqlite3', 'c++', 'z', 'iconv'

  s.ios.vendored_frameworks = 'ios/RCTQQAPI/TencentOpenAPI.framework'
end
