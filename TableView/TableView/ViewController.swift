//
//  ViewController.swift
//  TableView
//
//  Created by Marcelo Squarisi on 25/09/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableViewCars: UITableView!
    
    //var carArray = ["Volks", "GM", "Honda", "Toyota", "Fiat"]
    
    var carArray = [Car]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewCars.delegate = self
        tableViewCars.dataSource = self
        
        carArray.append(Car(name: "GM"))
        carArray.append(Car(name: "Volks"))
        carArray.append(Car(name: "Honda"))
        carArray.append(Car(name: "Toyota"))
        carArray.append(Car(name: "Fiat"))
        
    }


}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (carArray[indexPath.row].name)
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = UITableViewCell()
        cel.textLabel?.text = carArray[indexPath.row].name
        cel.imageView?.image = UIImage(named: "download.jpeg")
        
        return cel
    }
    
    
}



