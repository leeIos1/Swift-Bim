//
//  NetworkTool.swift
//  Max-Bim
//
//  Created by apple on 2020/5/28.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

let leeNetworkReturnSuccess:NSNumber = 200  //请求成功

struct NetworkTool{
    
    static func lee_request(url:String, params:AnyObject,type:HTTPMethod , completionHandler: @escaping (_ result: NSDictionary) -> () ,failHandler:@escaping (_ error:Error?) -> () ){
        
        Alamofire.request(url,method: type, parameters: params.copy() as? Parameters).responseJSON { (response) in
            // 网络错误的提示信息
            guard response.result.isSuccess else { failHandler(response.error);  return}
            if let value = response.result.value {
                let json = JSON(value)
                if let data = json.dictionaryObject {
                    completionHandler(data as NSDictionary)
                }else { failHandler(response.error);  return}
            }else { failHandler(response.error);  return}
        }
    }

}
