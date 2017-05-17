//
//  NibLoadableView.swift
//  TacoPaco
//
//  Created by oscar ljungdahl on 2017-05-17.
//  Copyright © 2017 oskar ljungdahl. All rights reserved.
//

//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
