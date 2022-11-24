//
//  HomeVC.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()



    }
        
    @IBAction func searchTapped(_ sender: Any) {
        let vc = SearchVC(nibName: "SearchVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
        
    }
    
    
    
    
    @IBAction func detailTapped(_ sender: Any) {
        let vc = DetailVC(nibName: "DetailVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
        
    }
    
    
    
    
    
    
    @IBAction func notesTapped(_ sender: Any) {
        let vc = NotificationVC(nibName: "NotificationVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    



    
}
