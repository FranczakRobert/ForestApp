//
//  GuideMenuViewController.swift
//  ForestApp
//
//  Created by Robert Franczak on 21/04/2023.
//
import Foundation
import UIKit

class GuideMenuViewController : UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let menuContainter : [GuideMenu] = [
        GuideMenu(image: "foodGuide", description: "Forest Food"),
        GuideMenu(image: "CampView", description: "Make Camp"),
        GuideMenu(image: "asd",  description:  "Sample"),
        GuideMenu(image: "Test", description: "Sample"),
        GuideMenu(image: "asd",  description:  "Sample"),
        GuideMenu(image: "Test", description: "Sample"),

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLayout()
    }
    
    func initLayout() {
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        navigationItem.backButtonTitle = "Guide"
    }
}

extension GuideMenuViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuContainter.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GuideCollectionViewCell
        let porop = menuContainter[indexPath.row]
        cell.descriptionLabel.text = porop.description
        cell.imageView.image = UIImage(named: porop.image)
        cell.layer.cornerRadius = 30
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 10)/2
        collectionView.backgroundColor = UIColor(named: "Red")
//        collectionView.backgroundColor = UIColor.clear
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("[Cell nr: \(indexPath.row)]")
        
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "goFood", sender: self)
            break;
        case 1:
            performSegue(withIdentifier: "goCamp", sender: self)
        default:
            print("No Segue")
        }
    }
}

