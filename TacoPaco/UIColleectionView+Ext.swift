//
//  UIColleectionView+Ext.swift
//  TacoPaco
//
//  Created by oscar ljungdahl on 2017-05-17.
//  Copyright © 2017 oskar ljungdahl. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type)  where T:
        ReusableView, T: NibLoadableView{
    
            let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath ) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else{
            fatalError("Bränn Malmö\(T.reuseIdentifier)")
    }
        return cell
    }
}

extension UICollectionView: ReusableView {}
