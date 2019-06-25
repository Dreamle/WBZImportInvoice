
Pod::Spec.new do |s|

  s.name         = "WBZImportInvoice"
  s.version      = "0.0.11"
  s.summary      = "微报账项目集合微信和支付宝的卡包导入发票"
  s.description  = <<-DESC
               微报账项目集合微信和支付宝的卡包导入发票，供别人方便使用
                   DESC
  s.homepage     = "https://github.com/Dreamle/WBZImportInvoice"
  s.license      = 'MIT'
  s.author             = { "dreamLee" => "404436209@qq.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/Dreamle/WBZImportInvoice.git", :tag => "0.0.11" }

  s.framework = "WBZLib"
  s.source_files  = "WBZImportInvoice", "*.*"
  s.dependency "WechatOpenSDK", '~> 1.8.4'
  s.requires_arc = true
end
