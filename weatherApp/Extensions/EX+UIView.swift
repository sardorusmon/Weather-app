//
//  EX+UIView.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius : CGFloat {
        
        get {return self.layer.cornerRadius}
        set {self.layer.cornerRadius = newValue}
    }
    
    
}
