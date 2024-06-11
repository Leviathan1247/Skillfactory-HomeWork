//
//  Cell.swift
//  CollectionView(homework assignment)
//
//  Created by Левиафан on 2024-06-05.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    @IBOutlet weak var smileImage: UIImageView!
    
    func setSmileImage(smileName: String){
        smileImage.image = UIImage(named: smileName)
    }
    
    func setTemperatureImage(tempName: String){
        temperatureImage.image = UIImage(named: tempName)
    }
    
}
