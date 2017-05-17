//
//  DropShadow.swift
//  TacoPaco
//
//  Created by oscar ljungdahl on 2017-05-16.
//  Copyright © 2017 oskar ljungdahl. All rights reserved.
//

import UIKit

protocol DropShadow{}
extension DropShadow where Self: UIView{
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5 
    
    }

}


