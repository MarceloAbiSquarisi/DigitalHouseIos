//
//  ViewController.swift
//  TableViewExercicio002
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableViewAnimals: UITableView!

    var animalArray =  Animal.getAnimalDummyArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        tableViewAnimals.delegate = self
        tableViewAnimals.dataSource = self
    }


}

extension ViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewControler = AnimalDetailViewController.getViewController() {
            viewControler.animal = animalArray[indexPath.row]
            present(viewControler, animated: true, completion: nil)
        }
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalCell

        cell.setup(animal: animalArray[indexPath.row])
        return  cell
    }


}




