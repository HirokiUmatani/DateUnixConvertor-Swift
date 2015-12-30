### DateUnixConvertor-Swift [![GitHub license](https://img.shields.io/badge/LICENSE-MIT%20LICENSE-blue.svg)](https://github.com/HirokiUmatani/DateUnixConvertor-Swift/LICENSE) [![CocoaPods](https://img.shields.io/badge/platform-ios-lightgrey.svg)](https://cocoapods.org/pods/DateUnixConvertor-Swift) [![CocoaPods](https://img.shields.io/cocoapods/v/DateUnixConvertor-Swift.svg)](https://cocoapods.org/pods/DateUnixConvertor-Swift)  

====
### Overview
Convert  
This Library can convert to NSDate,UnixTime or String.
NSDate -> String  
NSDate -> UnixTime  
UnixTime ->String  

String -> NSDate  
String -> UnixTime  
UnixTime -> NSDate  

### Installation
<code>
platform :ios, '8.0'  
use_frameworks!  
target 'YOUR_PROJECT_NAME' do  
pod "DateUnixConvertor-Swift"  
end
</code>

### Usage

#### □ Import

<code>
import DateUnixConvertor_Swift
</code>

#### □ sample
```
/**
         convert from NSDate to String or Unix Time
         */
        let NOW_DATE = NSDate()
        let OUTPUT_FORMAT = "yyyy-MM-dd HH:mm:ss.SSS"
        
        let date_string:String = DateUnixConvertor.convertStringFromDate(NOW_DATE, format: OUTPUT_FORMAT)
        
        NSLog("date -> string :%@",date_string);
        
        let date_time:Double = DateUnixConvertor .convertUnixTimeFromDate(NOW_DATE)
        NSLog("date -> unix_time :%f",date_time);
        
        
        let time_str:String = DateUnixConvertor.convertStringFromUnixTime(date_time, format: OUTPUT_FORMAT)
        NSLog("unix_time -> string :%@",time_str);
        
        
        /**
         convert from String to NSDate or UnixTime
         */
        let TEST_DATE:String = "1234-05-06 01:23:45.678"
        let INPUT_FORMAT:String = "yyyy-MM-dd HH:mm:ss.SSS"
        
        
        let str_date:NSDate = DateUnixConvertor .convertDateFromString(TEST_DATE, format: INPUT_FORMAT)
        NSLog("string -> date :%@",str_date);
        
        let str_time:Double = DateUnixConvertor.convertUnixTimeFromString(TEST_DATE, format: INPUT_FORMAT)
        
        NSLog("string -> unix_time :%f",str_time);
        
        let time_date:NSDate = DateUnixConvertor.convertDateFromUnixTime(str_time)
        
        NSLog("unix_time -> date :%@",time_date);
```

### Documents
[library document](http://cocoadocs.org/docsets/DateUnixConvertor-Swift)

### Licence
[MIT](https://github.com/HirokiUmatani/DateUnixConvertor-Swift/blob/master/LICENSE)

### Author
[GitHub](https://github.com/HirokiUmatani)  
[CocoaPod](https://cocoapods.org/owners/4170)  
[FaceBook](https://www.facebook.com/hiroki.umatani)  
[Twitter](https://twitter.com/pearchatHU)  

