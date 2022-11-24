//
//  SearchTVC.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import UIKit

class SearchTVC: UITableViewCell {
    static func nib()->UINib{
        return UINib(nibName: "SearchTVC", bundle: nil)
    }
    
    static var identify = "SearchTVC"
    
    @IBOutlet weak var temperatureLbl: UILabel!
    @IBOutlet weak var countryLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()



    }

    
    func updateSearchTVC(info : SearchDM){
        
        temperatureLbl.text = info.temprature
        countryLbl.text = info.country
        
    }
    
    
    
    
    
}
