//
//  ColourDetailVC.swift
//  Colours App
//
//  Created by Clayville on 30/9/2022.
//

import UIKit

class ColourDetailVC: UIViewController {
    
    var colour: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour ?? .blue
    }
}
