//
//  DetailVC.swift
//  weatherApp
//
//  Created by Sardor Panjiyev on 24/11/22.
//

import UIKit

class DetailVC: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var weatherTableArr : [WeatherForTAbleViewDM] = [
    WeatherForTAbleViewDM(img: "cloud", temperature: "24º", day: "Sep,13"),
    WeatherForTAbleViewDM(img: "cloud2", temperature: "20º", day: "Sep,14"),
    WeatherForTAbleViewDM(img: "sunny", temperature: "15º", day: "Sep,15"),
    WeatherForTAbleViewDM(img: "thunder", temperature: "23º", day: "Sep,16"),
    WeatherForTAbleViewDM(img: "rain", temperature: "21º", day: "Sep,17"),
    WeatherForTAbleViewDM(img: "rain", temperature: "25º", day: "Sep,18"),
    WeatherForTAbleViewDM(img: "thunder", temperature: "26º", day: "Sep,19"),
    WeatherForTAbleViewDM(img: "sunny", temperature: "30º", day: "Sep,20"),
    
    ]
    var weatherCollectArr : [WeatherForCollectionViewDM] = [
        WeatherForCollectionViewDM(img: "cloud", temperature: "24ºC", time: "15.00"),
        WeatherForCollectionViewDM(img: "cloud2", temperature: "23ºC", time: "16.00"),
        WeatherForCollectionViewDM(img: "thunder", temperature: "22ºC", time: "17.00"),
        WeatherForCollectionViewDM(img: "sunny", temperature: "21ºC", time: "18.00"),
        WeatherForCollectionViewDM(img: "rain", temperature: "20ºC", time: "19.00"),
        WeatherForCollectionViewDM(img: "cloud", temperature: "18ºC", time: "20.00"),
        WeatherForCollectionViewDM(img: "rain", temperature: "16ºC", time: "21.00"),
        WeatherForCollectionViewDM(img: "sunny", temperature: "14ºC", time: "22.00"),
        WeatherForCollectionViewDM(img: "thunder", temperature: "12ºC", time: "23.00"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViewS()
        
    }
    
    
    @IBAction func backTapped(_ sender: Any) { self.dismiss(animated: true) }
    

}
//MARK: -setUpViewS
extension DetailVC{
    func setUpViewS() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ItemsCVC.nib(), forCellWithReuseIdentifier: ItemsCVC.identify)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ItemsTVC.nib(), forCellReuseIdentifier: ItemsTVC.identify)
        tableView.separatorStyle = .none

    }
}

//MARK: -UICollectionViewDelegate
extension DetailVC : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("csdvvv")
    }
    
    
}
//MARK: -UICollectionViewDataSource
extension DetailVC : UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        weatherCollectArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemsCVC.identify, for: indexPath) as? ItemsCVC else {return UICollectionViewCell()}
        cell.updateCollectionViewCell(info: weatherCollectArr[indexPath.row])
        
        return cell
    }
}
//MARK: -UITableViewDelegate
extension DetailVC : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("eeeec")
        tableView.reloadData()
    }
}
//MARK: -UITableViewDataSource
extension DetailVC : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        weatherTableArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ItemsTVC.identify, for: indexPath) as? ItemsTVC else {return UITableViewCell()}
        cell.updateTableViewCell(info: weatherTableArr[indexPath.row])
        return cell

    }
}
