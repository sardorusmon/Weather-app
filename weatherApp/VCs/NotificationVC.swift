//
//  NotificationVC.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import UIKit

class NotificationVC: UIViewController {
    
    @IBOutlet weak var notesView: UIView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        notesView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        notesView.cornerRadius = 20
    }


    
    
    @IBAction func backTApped(_ sender: Any) {
        
        
        self.dismiss(animated: true)
    }
    
    
    

}
