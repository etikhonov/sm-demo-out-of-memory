require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'CapSm'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp,storyboard}'
  s.ios.deployment_target  = '13.0'
  s.dependency 'Capacitor'
  s.dependency 'smcamera_ios'
  s.resource_bundles = {
    'CapSmResources' => ['ios/Plugin/**/*.{lproj}/*', 'ios/Plugin/*.xcdatamodeld']
  } 
  s.swift_version = '5.1'
end
