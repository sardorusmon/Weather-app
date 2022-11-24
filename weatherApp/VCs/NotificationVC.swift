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

        // Do any additional setup after loading the view.
    }


    
    
    @IBAction func backTApped(_ sender: Any) {
        
        
        self.dismiss(animated: true)
    }
    
    
    

}
