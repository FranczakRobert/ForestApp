//
//  ViewController.swift
//  ForestApp
//
//  Created by Robert Franczak on 11/04/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLayout()
    }
    
    func initLayout() {
        loginBtn.layer.cornerRadius = 25
    }
}
