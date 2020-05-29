//
//  UITextField+Extension.swift
//  YinYinSwift
//
//  Created by jzl on 2019/3/25.
//  Copyright © 2019年 ww. All rights reserved.
//

import Foundation
import UIKit
extension UITextField{
    static func lee_initTextfield(frame:CGRect,placeholder:String,color:UIColor,font:UIFont,keyboardType:UIKeyboardType)-> UITextField{
        let textField = UITextField()
        textField.frame = frame
        textField.placeholder = placeholder
        textField.textColor = color
        textField.font = font
        textField.keyboardType = keyboardType
        return textField
    }
    
    ///给UITextField添加一个清除按钮
    func setModifyClearButton() {
        let clearButton = UIButton(type: .custom)
        clearButton.setImage(UIImage(named: "LeeClearPass"), for: .normal)
        clearButton.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        clearButton.contentMode = .scaleAspectFit
        clearButton.addTarget(self, action: #selector(UITextField.clear(sender:)), for: .touchUpInside)
        self.rightView = clearButton
        self.rightViewMode = .whileEditing
    }

    /// 点击清除按钮，清空内容
    @objc func clear(sender: AnyObject) {
        self.text = ""
    }
}

