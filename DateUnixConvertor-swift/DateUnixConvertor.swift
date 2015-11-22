//
//  DateUnixConvertor.swift
//  DateUnixConvertor
//
//  Created by hirokiumatani on 2015/11/22.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

import Foundation

class DateUnixConvertor: NSObject
{
    // MARK: - Convert From NSDate To NSString or Unix Time
    class func convertUnixTimeFromDate(date:NSDate) -> Double
    {
        let unixtime:Double = date.timeIntervalSince1970
        return unixtime
    }
    
    class func convertUnixTimeFromString(string:String , format:String) -> Double
    {
        let formatter:NSDateFormatter = self.setFormatterWithFormat(format)
        formatter.timeZone = NSTimeZone(name: "UTC")
        let date:NSDate = formatter.dateFromString(string)!
        let unixTime:Double  = self.convertUnixTimeFromDate(date)
        return unixTime
    }
    
    class func convertDateFromUnixTime(unixtime:Double) -> NSDate
    {
        let date:NSDate = NSDate(timeIntervalSince1970: unixtime)
        return date
    }
    
    
    // MARK: - Convert From NSString To NSDate or Unix Time
    class func convertStringFromUnixTime(unixtime:Double , format:String) -> String
    {
        let unixTimeDate:NSDate = self.convertDateFromUnixTime(unixtime)
        
        let formatter:NSDateFormatter = self.setFormatterWithFormat(format)
        let dateString:String = formatter.stringFromDate(unixTimeDate)
        return dateString
    }
    
    
    class func convertStringFromDate(date:NSDate,format:String)->String
    {
        let unixTime:Double = self.convertUnixTimeFromDate(date)
        let dateString:String = self.convertStringFromUnixTime(unixTime, format: format)
        return dateString
    }
    
    class func convertDateFromString(string:String,format:String)->NSDate
    {
        let unixTime:Double = self.convertUnixTimeFromString(string, format: format)
        let unixTimeDate:NSDate = self.convertDateFromUnixTime(unixTime)
        return unixTimeDate
    }
    
    class func setFormatterWithFormat(format:String)->NSDateFormatter
    {
        let formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = format
        formatter.locale = NSLocale.currentLocale()
        return formatter
    }
}