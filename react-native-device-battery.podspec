require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.license      = package['license']
  s.homepage     = package['homepage']
  s.authors      = package['author']
  s.summary      = package['description']
  s.source       = { :git => package['repository']['url'] }
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.dependency "React"

end

  
