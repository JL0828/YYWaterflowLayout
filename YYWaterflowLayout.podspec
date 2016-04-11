Pod::Spec.new do |s|  
  s.name             = "YYWaterflowLayout"  
  s.version          = "1.0.0"  
  s.summary          = "轻量级瀑布流样式。"  
  s.description      = <<-DESC
                       A lightweight stream waterfall layout style.

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/marychenyuan/YYWaterflowLayout"  
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"  
  s.license          = 'MIT'  
  s.author           = { "陈园" => "562351125@qq.com" }  
  s.source           = { :git => "https://github.com/marychenyuan/YYWaterflowLayout.git", :tag => "1.0.0" }  
  # s.social_media_url = 'https://twitter.com/NAME'  
  
  s.platform     = :ios, '6.0'  
  # s.ios.deployment_target = '6.0'  
  # s.osx.deployment_target = '10.7'  
  s.requires_arc = true  
  
  s.source_files = 'YYWaterflowLayout/*'  
  # s.resources = 'Assets'  
  
  # s.ios.exclude_files = 'Classes/osx'  
  # s.osx.exclude_files = 'Classes/ios'  
  # s.public_header_files = 'Classes/**/*.h'  
  s.frameworks = 'UIKit'  
  
end 