//
//  UIColorEXt.swift
//  Colours App
//
//  Created by Clayville on 30/9/2022.
//

import UIKit

extension UIColor{
    
    static func random() -> UIColor{
        
        let randomColour = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        return randomColour
    }
}
