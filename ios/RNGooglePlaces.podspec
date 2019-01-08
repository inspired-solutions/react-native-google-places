require "json"
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name          = 'RNGooglePlaces'
  s.version       = package['version']
  s.summary       = package['description']
  s.author        = package['author']['name']
  s.license       = package['license']
  s.homepage      = package['homepage']
  s.source        = { :git => 'https://github.com/tolu360/react-native-google-places.git' }
  s.platform      = :ios, '8.0'
  s.source_files  = "*.{h,m}"

  s.dependency "React"
  s.dependency "GooglePlaces"
  s.dependency "GooglePlacePicker"
end