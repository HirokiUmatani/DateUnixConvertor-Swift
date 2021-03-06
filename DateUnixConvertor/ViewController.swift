//
//  ViewController.swift
//  DateUnixConvertor
//
//  Created by hirokiumatani on 2015/11/22.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
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
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

