//
//  ShowImageVC.swift
//  CollectionView(homework assignment)
//
//  Created by Левиафан on 2024-06-05.
//

import UIKit

class ShowImageVC: UIViewController {

    
    @IBOutlet weak var currentImage: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        currentImage.image = UIImage(named: imageName)
        
    }
    

    func setImageName(name: String){
        imageName = name
    }

}
