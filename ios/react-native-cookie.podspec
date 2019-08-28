require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name                = package['name']
  s.version             = "0.1.1"
  s.summary             = package['description']
  s.description         = <<-DESC
                            Cookie Manager for React Native
                         DESC
  s.homepage            = "https://github.com/ILUMY/react-native-cookie"
  s.license             = package['license']
  s.author              = "ILUMY"
  s.source              = { :git => "git@github.com:ILUMY/react-native-cookie.git", :tag => "v#{s.version}" }
  s.requires_arc        = true
  s.platform            = :ios, "7.0"
  s.preserve_paths      = "*.framework"
  s.source_files        = 'RNCookieManager/*.{h,m}'
  s.dependency 'React'
end
