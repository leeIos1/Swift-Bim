//
//  UIKit+Extension.swift
//  YinYinSwift
//
//  Created by jzl on 2019/3/19.
//  Copyright © 2019年 ww. All rights reserved.
//

import UIKit



/************************** load ******************************/
// MARK: - storyborad 的加载
protocol LeeStoryboardLoad {}

extension LeeStoryboardLoad where Self:UIViewController {
    
    static func loadStoryboard() -> Self{
        return UIStoryboard(name: "\(self)", bundle: nil).instantiateViewController(withIdentifier: "\(self)") as! Self
    }
}
// MARK: - nib 的加载
protocol LeeNibLoad {}

extension LeeNibLoad{
    static func loadNib() -> Self{
        return Bundle.main.loadNibNamed("\(self)", owner: nil, options: nil)?.last as! Self
    }
}

protocol LeeReigisterForNib {}

extension LeeReigisterForNib{
    static var identifier:String{return "\(self)"}
    static var nib:UINib?{return UINib(nibName: "\(self)", bundle: nil)}
}
// MARK: - tableviewcell 的加载和获取
extension UITableView{
    
    func lee_registerCell<T:UITableViewCell>(cell:T.Type) where T:LeeReigisterForNib{
        if let nib = T.nib{
            register(nib, forCellReuseIdentifier: T.identifier)
        }else{
            register(cell, forCellReuseIdentifier: T.identifier)
        }
    }
    
    func lee_dequeueReusableCell<T:UITableViewCell>(indexPath:IndexPath) -> T where T:LeeReigisterForNib{
        return dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as! T
    }
}
// MARK: - collectionView 的加载和获取
extension UICollectionView{
    func lee_registerCell<T:UICollectionViewCell>(cell:T.Type) where T:LeeReigisterForNib{
        if let nib = T.nib{
            register(nib, forCellWithReuseIdentifier: "\(self)")
        }else{
            register(cell, forCellWithReuseIdentifier: "\(self)")
        }
    }
    func lee_dequeueReuseableCell<T:UICollectionViewCell>(indexPath:IndexPath) -> T where T:LeeReigisterForNib{
        return dequeueReusableCell(withReuseIdentifier: "\(self)", for: indexPath) as! T
    }
    /// 注册头部
    func lee_registerHeaderReusableView<T:UICollectionReusableView>(reusableView :T.Type) where T:LeeReigisterForNib{
        if let nib = T.nib{
            register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier)
        }else{
            register(reusableView, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier)
        }
    }
    /// 获取可重用的头部
    func lee_dequeueHeaderReusableView<T:UICollectionReusableView>(indexPath:IndexPath)->T where T:LeeReigisterForNib{
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier, for: indexPath) as! T
    }
    /// 注册底部
    func lee_registerFooterReusableView<T:UICollectionReusableView>(resusableView : T.Type) where T:LeeReigisterForNib{
        if let nib = T.nib {
            register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier)
        }else{
            register(resusableView, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier)
        }
    }
    /// 获取可重用的底部
    func lee_dequeueFooterReusableView<T:UICollectionReusableView>(indexPath:IndexPath)->T where T:LeeReigisterForNib{
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier, for: indexPath) as! T
    }
}

 



