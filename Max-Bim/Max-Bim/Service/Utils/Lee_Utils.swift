//
//  Lee_Utils.swift
//  Max-Bim
//
//  Created by apple on 2020/5/28.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class Lee_Utils: NSObject {
      
        static func getDateWithString(timeString:String)->Date{
            let df = DateFormatter()
            df.dateFormat = "yyyy-MM-dd HH:mm:ss"
            let date = df.date(from: timeString)
            return date ?? Date();
        }
        
        static func getTimeStamp()->String{
            let date = NSDate.init()
            return"\(date.timeIntervalSince1970)"
        }
        
 
}
