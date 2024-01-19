//
//  ViewController.swift
//  Tisco
//
//  Created by somsak on 20/8/2566 BE.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "vehicleRegistrationCell", for: indexPath) as! VehicleRegistrationCollectionViewCell
        
        cell.image.image = UIImage(named: self.listImage[indexPath.row])
        cell.image.layer.cornerRadius = 50.0
        
        return cell
    }
    
    
    var listImage: [String] = ["a", "b"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

