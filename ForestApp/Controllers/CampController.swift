//
//  CampController.swift
//  ForestApp
//
//  Created by Robert Franczak on 24/04/2023.
//

import Foundation
import UIKit

class CampController : UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let menuContainter : [GuideMenu] = [
        GuideMenu(image: "asd", description: "Sample"),
        GuideMenu(image: "asd", description: "Sample"),
        GuideMenu(image: "asd", description: "Sample"),
        GuideMenu(image: "asd", description: "Sample"),
        GuideMenu(image: "asd", description: "Sample"),
        GuideMenu(image: "asd", description: "Sample"),

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLayout()
    }
    
    func initLayout() {
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        navigationItem.backButtonTitle = "Menu"
    }
}
extension CampController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuContainter.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampCells", for: indexPath) as! CampCollectionViewCell
        let porop = menuContainter[indexPath.row]
        cell.descriptionLabel.text = porop.description
        cell.imageView.image = UIImage(named: porop.image)
        cell.layer.cornerRadius = 30
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 10)
        collectionView.backgroundColor = UIColor(named: "Red")
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("[Cell nr: \(indexPath.row)]")
        
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "goCamp", sender: self)
            break;
        default:
            print("No Segue")
        }
        
    }
}
