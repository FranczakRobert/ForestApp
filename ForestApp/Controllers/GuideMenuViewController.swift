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
        GuideMenu(image: "asd", description: "First Cell"),
        GuideMenu(image: "Test", description: "Second Cell"),
        GuideMenu(image: "asd", description: "First Cell"),
        GuideMenu(image: "Test", description: "Second Cell"),
        GuideMenu(image: "asd", description: "First Cell"),
        GuideMenu(image: "Test", description: "Second Cell"),
        GuideMenu(image: "asd", description: "First Cell"),
        GuideMenu(image: "Test", description: "Second Cell"),
        GuideMenu(image: "asd", description: "First Cell"),
        GuideMenu(image: "Test", description: "Second Cell"),
        GuideMenu(image: "asd", description: "First Cell"),
        GuideMenu(image: "Test", description: "Second Cell"),
        GuideMenu(image: "asd", description: "First Cell"),
        GuideMenu(image: "Test", description: "Second Cell"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLayout()
    }
    
    func initLayout() {
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

extension GuideMenuViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuContainter.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
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
        print("Dotknąleś \(indexPath.row) elementu")
    }
}

