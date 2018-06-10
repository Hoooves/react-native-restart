require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))
version = package["version"]
giturl = package["repository"]["url"]

Pod::Spec.new do |s|
  s.name         = "RCTRestart"
  s.version      = version
  s.summary      = "react-native-restart"
  s.homepage     = giturl
  s.license      = "MIT"
  s.author       = { "Avishay Bar" => "http://www.geektime.co.il" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => giturl, :tag => version }
  s.source_files  = "RCTRestart/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end

  
