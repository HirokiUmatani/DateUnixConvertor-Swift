//
//  DateUnixConvertor.swift
//  DateUnixConvertor
//
//  Created by hirokiumatani on 2015/11/22.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

import Foundation

public class DateUnixConvertor: NSObject
{

    public class func convertUnixTimeFromDate(date:NSDate) -> Double
    {
        let unixtime:Double = date.timeIntervalSince1970
        return unixtime
    }
    
    public class func convertUnixTimeFromString(string:String , format:String) -> Double
    {
        let formatter:NSDateFormatter = DateUnixConvertor.setFormatterWithFormat(format)
        formatter.timeZone = NSTimeZone(name: "UTC")
        let date:NSDate = formatter.dateFromString(string)!
        let unixTime:Double  = self.convertUnixTimeFromDate(date)
        return unixTime
    }
    
    public class func convertDateFromUnixTime(unixtime:Double) -> NSDate
    {
        let date:NSDate = NSDate(timeIntervalSince1970: unixtime)
        return date
    }
    
    
    public class func convertStringFromUnixTime(unixtime:Double , format:String) -> String
    {
        let unixTimeDate:NSDate = DateUnixConvertor.convertDateFromUnixTime(unixtime)
        
        let formatter:NSDateFormatter = self.setFormatterWithFormat(format)
        let dateString:String = formatter.stringFromDate(unixTimeDate)
        return dateString
    }
    
    
    public class func convertStringFromDate(date:NSDate,format:String)->String
    {
        let unixTime:Double = DateUnixConvertor.convertUnixTimeFromDate(date)
        let dateString:String = DateUnixConvertor.convertStringFromUnixTime(unixTime, format: format)
        return dateString
    }
    
    public class func convertDateFromString(string:String,format:String)->NSDate
    {
        let unixTime:Double = DateUnixConvertor.convertUnixTimeFromString(string, format: format)
        let unixTimeDate:NSDate = DateUnixConvertor.convertDateFromUnixTime(unixTime)
        return unixTimeDate
    }
    
    public class func setFormatterWithFormat(format:String)->NSDateFormatter
    {
        let formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = format
        formatter.locale = NSLocale.currentLocale()
        return formatter
    }
}