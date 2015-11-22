Pod::Spec.new do |s|
   s.name     = 'DateUnixConvertor-swift'
   s.version  = '1.0.0'
   s.platform = :'ios', '7.0'
   s.license  = 'MIT'
   s.summary  = 'This Library can convert to NSDate,UnixTime or String. NSDate -> String'
   s.homepage = 'https://github.com/HirokiUmatani/DateUnixConvertor-swift'
   s.author   = { "HirokiUmatani" => "info@pear.chat" }
   s.source   = { :git => 'https://github.com/HirokiUmatani/DateUnixConvertor-swift.git', :tag => s.version.to_s }
   s.source_files = 'DateUnixConvertor-swift/*.{swift}'
   s.requires_arc = true
end
