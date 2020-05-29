//
//  LeeTabBarController.swift
//  Max-Bim
//
//  Created by apple on 2020/5/28.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import SVProgressHUD

class LeeTabBarController: UITabBarController {

    override func viewDidLoad() {
            super.viewDidLoad()

            setChildrenVC()
            // Do any additional setup after loading the view.
        }
        

        func setChildrenVC(){
            addChildrenVC(childVC: LeeHomePageVC(), title: "社区", imageName: "LeeCommunityBar", selectedImage: "LeeCommunityPressBar")
            addChildrenVC(childVC: LeeMessageVC(), title: "语聊", imageName: "LeeTalkBar", selectedImage: "LeeTalkPressBar")
            addChildrenVC(childVC: LeeMeetingVC(), title: "初见", imageName: "LeeDateBar", selectedImage: "LeeDatePressBar")
            addChildrenVC(childVC: LeeSynergnVC(), title: "我的", imageName: "LeeAccountBar", selectedImage: "LeeAccountPressBar")
        }
        
        func addChildrenVC(childVC:UIViewController,title:String,imageName:String,selectedImage:String){
            childVC.tabBarItem.image = UIImage(named: imageName)
            let selectImage = UIImage(named: selectedImage)
            childVC.tabBarItem.selectedImage = selectImage?.withRenderingMode(.alwaysOriginal)
            childVC.title = title
            UITabBarItem.appearance().setTitleTextAttributes(
                [NSAttributedString.Key.foregroundColor: UIColor.orange], for:.selected)
        
            
            //          [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
    //        titleHighlightedColor, NSForegroundColorAttributeName,
    //        nil] forState:UIControlStateSelected];
            let nav = LeeNavigationController.init(rootViewController: childVC)
            self.addChild(nav)
        }
        

}
