//
//  MenuInterface.swift
//  ForestApp
//
//  Created by Robert Franczak on 11/04/2023.
//
import Foundation
import UIKit

class MenuViewController : UIViewController {
    
    @IBOutlet weak var equipmentButton: UIButton!
    @IBOutlet weak var nightsButton: UIView!
    @IBOutlet weak var mapsButton: UIButton!
    @IBOutlet weak var guideButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        equipmentButton.layer.cornerRadius = 30
        nightsButton.layer.cornerRadius = 30
        mapsButton.layer.cornerRadius = 30
        guideButton.layer.cornerRadius = 30
        navigationItem.hidesBackButton = true
        navigationItem.backButtonTitle = "Main"
    }
}
