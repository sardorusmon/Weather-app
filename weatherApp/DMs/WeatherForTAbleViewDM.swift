//
//  WeatherForTAbleViewDM.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import Foundation
import UIKit

struct WeatherForTAbleViewDM {
    var img : String
    var temperature : String
    var day : String
    
    var image : UIImage {
        return UIImage(named: img) ?? UIImage(systemName: "trash")!
    }
}
