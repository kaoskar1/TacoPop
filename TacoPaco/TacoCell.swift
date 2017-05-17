//
//  TacoCell.swift
//  TacoPaco
//
//  Created by oscar ljungdahl on 2017-05-16.
//  Copyright © 2017 oskar ljungdahl. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView{

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco){
        self.taco = taco
            tacoImage.image = UIImage(named: taco.proteinId.rawValue)
            tacoLabel.text = taco.productName
    
    }
}
