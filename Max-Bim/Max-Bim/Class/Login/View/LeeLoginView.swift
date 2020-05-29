//
//  LeeLoginView.swift
//  Max-Bim
//
//  Created by apple on 2020/5/29.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

 

class LeeLoginView: UIView {
    
    var loginClouse:((String,String) -> Void)?
    
    fileprivate let commonMargin = CGFloat(15)
    fileprivate var welcomeLabel : UILabel!
    fileprivate var companyLabel : UILabel!
    fileprivate var accountLabel : UILabel!
    fileprivate var accountTF : UITextField!
    fileprivate var accountLineView : UIView!
    fileprivate var passwordLabel : UILabel!
    fileprivate var passwordTF : UITextField!
    fileprivate var passwordLineView : UIView!
    fileprivate var eyeButton : UIButton!
    fileprivate var commitButton : UIButton!
    fileprivate var keyboardHeight : CGFloat?
 
    //MARK: ------------------------- Life Cycle Methods ------------------------
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
        setContentViewsFrame()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -------------------------- Private Methods --------------------------
    fileprivate func initUI(){
        welcomeLabel = UILabel.lee_initLabel(frame: CGRect.zero, text: "欢迎使用", textColor: Lee34Color, textA: .left, font: UIFont.boldSystemFont(ofSize: 25))
        companyLabel = UILabel.lee_initLabel(frame: CGRect.zero, text: "MAX-BIM信息管理平台", textColor: Lee34Color, textA: .left, font: UIFont.systemFont(ofSize: 20))
        accountLabel = UILabel.lee_initLabel(frame: CGRect.zero, text: "用户名", textColor: Lee34Color, textA: .left, font: UIFont.systemFont(ofSize: 18))
        accountTF = UITextField.lee_initTextfield(frame: CGRect.zero, placeholder: "请输入用户名/手机号", color: Lee34Color, font: UIFont.systemFont(ofSize: 15), keyboardType: .webSearch)
        accountTF.clearButtonMode = .whileEditing
        accountTF.returnKeyType = .done
        accountTF.delegate = self;
        accountTF.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .valueChanged)
        accountLineView = UIView.init()
        accountLineView.backgroundColor = LeeSplitColor
        passwordLabel = UILabel.lee_initLabel(frame: CGRect.zero, text: "密码", textColor: Lee34Color, textA: .left, font: UIFont.systemFont(ofSize: 18))
        passwordTF = UITextField.lee_initTextfield(frame: CGRect.zero, placeholder: "请输入密码", color: Lee34Color, font: UIFont.systemFont(ofSize: 15), keyboardType: .numbersAndPunctuation)
        passwordTF.clearButtonMode = .whileEditing
        passwordTF.returnKeyType = .go
        passwordTF.delegate = self;
        passwordTF.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .valueChanged)
        passwordTF.isSecureTextEntry = true
        eyeButton = UIButton.lee_initImageButton(frame: CGRect.zero, image: UIImage.init(named: "LeeHidePass")!)
        eyeButton.setImage(UIImage.init(named: "LeeShowPass"), for: .selected)
        eyeButton.addTarget(self, action: #selector(eyesAction), for: .touchUpInside)
        eyeButton.isHidden = true
        passwordLineView = UIView.init()
        passwordLineView.backgroundColor = LeeSplitColor
        commitButton = UIButton.lee_initTextButton(frame: CGRect.zero, text: "登录", textColor: Lee255Color, font: UIFont.systemFont(ofSize: 18), bgColor: LeeMainColor)
        commitButton.addTarget(self, action: #selector(commitAction), for: .touchUpInside)
        UIView.lee_radius(view: commitButton, r: 25)
        commitButton.isEnabled = false
        commitButton.alpha = 0.5
        addSubview(welcomeLabel)
        addSubview(companyLabel)
        addSubview(accountLabel)
        addSubview(accountTF)
        addSubview(accountLineView)
        addSubview(passwordLabel)
        addSubview(passwordTF)
        addSubview(eyeButton)
        addSubview(passwordLineView)
        addSubview(commitButton)
        //#define UserDefaultSet(value,key) [[NSUserDefaults standardUserDefaults] setObject:value forKey:key]
        //#define UserDefaultObject(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]
        if let lastAccount = UserDefaults.standard.value(forKey: Lee_accountKey){
            accountTF.text = lastAccount as? String
        }
        if let lastPassword = UserDefaults.standard.value(forKey: Lee_passwordKey){
            passwordTF.text = lastPassword as? String
        }
        let account = accountTF.text
        let password = passwordTF.text
        buttonActivity(activity: false)
        if(String.vaildStr(validStr: account)&&String.vaildStr(validStr: password)){
            if(account!.count>=6&&password!.count>=6){
                buttonActivity(activity: true)
            }
        }
    }
    
    fileprivate func setContentViewsFrame(){
        
    }
    
    fileprivate func buttonActivity(activity:Bool){
        
    }
    //MARK: --------------------------- Event Methods ---------------------------
    @objc func eyesAction(){
        
    }
    
    @objc func commitAction(){
        
    }
    
    @objc func textFieldDidChange(textField:UITextField){
        
    }
}

extension LeeLoginView:UITextFieldDelegate{
    //MARK: -------------------------- Delegate Methods -------------------------
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}
