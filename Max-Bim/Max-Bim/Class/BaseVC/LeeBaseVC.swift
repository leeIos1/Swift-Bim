//
//  LeeBaseVC.swift
//  Max-Bim
//
//  Created by apple on 2020/5/28.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class LeeBaseVC: UIViewController {

     override func viewDidLoad() {
            super.viewDidLoad()
    //withRenderingMode(.alwaysOriginal)
            let leftItem = UIBarButtonItem(image: UIImage.init(named: "LeeBackBlack")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(leftAction))
            navigationItem.leftBarButtonItem = leftItem;
            
        }
        
        @objc func leftAction(){
            navigationController?.popViewController(animated: true)
        }

}
