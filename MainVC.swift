//
//  MainVC.swift
//  TacoPaco
//
//  Created by oscar ljungdahl on 2017-05-16.
//  Copyright © 2017 oskar ljungdahl. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate  {
    @IBOutlet weak var headerView:HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds: DataService = DataService.instance

    override func viewDidLoad() {
    super.viewDidLoad()

        ds.loadDeliciousTacoData()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addDropShadow()

        collectionView.register(TacoCell.self)
    }

    
    func deliciousTacoDataloaded() {
        print("vi cyklar runt i världen")
    }
    
}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return ds.tacoArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            return cell
        
        }
        return UICollectionViewCell()

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //bajsBög
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }

}












