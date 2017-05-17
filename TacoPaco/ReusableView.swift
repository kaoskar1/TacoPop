//
//  ReusableView.swift
//  TacoPaco
//
//  Created by oscar ljungdahl on 2017-05-16.
//  Copyright © 2017 oskar ljungdahl. All rights reserved.
//

import UIKit

protocol ReusableView: class {}
    extension ReusableView where Self: UIView {
        
        static var reuseIdentifier: String {
            return String(describing: self)
    }
}
