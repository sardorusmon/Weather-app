//
//  ItemsCVC.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import UIKit

class ItemsCVC: UICollectionViewCell {
    
    
    
    static func nib()->UINib{
        return UINib(nibName: "ItemsCVC", bundle: nil)
    }
    
    static var identify = "ItemsCVC"
    
    
    @IBOutlet weak var tempratureLbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()


    }

    func updateCollectionViewCell(info : WeatherForCollectionViewDM) {
        tempratureLbl.text = info.temperature
        img.image = info.image
        timeLbl.text = info.time
    }
    
    
    
}
