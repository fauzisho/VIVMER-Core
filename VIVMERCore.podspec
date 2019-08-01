Pod::Spec.new do |s|

s.name         = "VIVMERCore"
s.version      = "0.0.1"
s.summary      = "Core VIVMER architecture"
s.homepage     = "https://github.com/fauzisho/VIVMERCore.git"
s.license      = "MIT"
s.author       = { "sholichin.fauzi@graduate.utm.my" => "sholichin.fauzi@graduate.utm.my" }
s.platform     = :ios, "9.0"
s.source       = { :git => 'https://github.com/fauzisho/VIVMERCore.git', :tag => s.version.to_s }
s.source_files  = "VIVMERCore", "VIVMERCore/**/*.{h,m,swift,xib}"
s.framework		= 'UIKit', 'AVFoundation'


end

