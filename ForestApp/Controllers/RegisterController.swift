//
//  RegisterController.swift
//  ForestApp
//
//  Created by Robert Franczak on 11/04/2023.
//

import Foundation
import UIKit

class RegisterController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navInit()
    }
    
    func navInit() {
        navigationItem.title = Names.Navigation.title
        navigationItem.backBarButtonItem?.tintColor = .black
    }
}
