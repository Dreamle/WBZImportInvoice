
Pod::Spec.new do |s|

  s.name         = "WBZImportInvoice"
  s.version      = "0.0.2"
  s.summary      = "微报账项目集合微信和支付宝的卡包导入发票"


  s.description  = <<-DESC
               微报账项目集合微信和支付宝的卡包导入发票，供别人方便使用
                   DESC

  s.homepage     = "https://github.com/Dreamle/WBZImportInvoice"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "dreamLee" => "404436209@qq.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/Dreamle/WBZImportInvoice", :tag => "0.0.2" }

  # s.public_header_files = "Classes/**/*.h"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  s.frameworks = "WEBImportInvoice/WBZLib",
  s.requires_arc = true
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "WechatOpenSDK"

end
