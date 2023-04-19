//
//  TestMain.swift
//  ForestApp
//
//  Created by Robert Franczak on 11/04/2023.
//
import Foundation
import UIKit

class TestMain : UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var show: UIView!
    @IBOutlet weak var Guide: UIButton!
    @IBOutlet weak var Maps: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.layer.cornerRadius = 30
        show.layer.cornerRadius = 30
        Guide.layer.cornerRadius = 30
        Maps.layer.cornerRadius = 30
    }
   
}
