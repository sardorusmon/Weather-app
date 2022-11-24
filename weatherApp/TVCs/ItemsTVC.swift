//
//  ItemsTVC.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import UIKit

class ItemsTVC: UITableViewCell {

    static func nib()->UINib{
        return UINib(nibName: "ItemsTVC", bundle: nil)
    }
    
    static var identify = "ItemsTVC"

    
    @IBOutlet weak var tempratureLbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var dayLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()


    }

    func updateTableViewCell(info : WeatherForTAbleViewDM) {
        tempratureLbl.text = info.temperature
        img.image = info.image
        dayLbl.text = info.day
    }
    
    
    
    
}
