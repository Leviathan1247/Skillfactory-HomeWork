//
//  ViewController.swift
//  CollectionView(homework assignment)
//
//  Created by Левиафан on 2024-06-05.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    
    let arrayTemperature = ["temp.blackGreen", "temp.darkYellow", "temp.green", "temp.lightYellow", "temp.orange", "temp.red"]
    let arraySmile = ["bad", "favorite", "hate", "nice", "notPleasant", "routine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOne.dataSource = self
        collectionViewOne.delegate = self
        collectionViewTwo.dataSource = self
        collectionViewTwo.delegate = self
        
    }
    
    func collectionView( _ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else { return }
          var currentSelectedImage: String!
          if collectionView == collectionViewOne{
              currentSelectedImage = arrayTemperature[indexPath.row]
          }
          else if collectionView == collectionViewTwo{
              currentSelectedImage = arraySmile[indexPath.row]
          }
          vc.setImageName(name: currentSelectedImage)
          present(vc, animated: true, completion: nil)
          
      }
      
      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          if collectionView == collectionViewOne {
              return arrayTemperature.count
          }
          else if collectionView == collectionViewTwo{
              return arraySmile.count
          }
          return 0
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          if collectionView == collectionViewOne {
              if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell {
                  let imageName = arrayTemperature[indexPath.row]
                  cell.setTemperatureImage(tempName: imageName)
                  return cell
              }
              
          }
          
          else  if collectionView == collectionViewTwo {
              if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell {
                  let imageName = arraySmile[indexPath.row]
                  cell.setSmileImage(smileName: imageName)
                  return cell
              }
          }
          return UICollectionViewCell()
      }
  }
