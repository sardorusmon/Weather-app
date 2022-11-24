//
//  SearchVC.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import UIKit

class SearchVC: UIViewController {
    
    

    
    @IBOutlet weak var tableView: UITableView!
    var searchArr : [SearchDM] = [
    SearchDM(country: "Surabaya", temprature: "34º/23º"),
    SearchDM(country: "Banjarmasin", temprature: "30º/21º"),
    SearchDM(country: "Yogyakarta", temprature: "32º/21º"),
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()



        setUpTableView()
    }

    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SearchTVC.nib(), forCellReuseIdentifier: SearchTVC.identify)
        tableView.separatorStyle = .none
    }
   

    
    @IBAction func backTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    
}
extension SearchVC : UITableViewDelegate {
    
    
}

extension SearchVC : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchTVC.identify, for: indexPath) as? SearchTVC else {return UITableViewCell()}
        cell.updateSearchTVC(info: searchArr[indexPath.row])
        
        return cell
    }
    
}
