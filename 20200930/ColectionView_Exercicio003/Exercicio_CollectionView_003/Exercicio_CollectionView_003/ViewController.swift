//
//  ViewController.swift
//  Exercicio_CollectionView_003
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegate
{
    
    
}

extension ViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Car.getDummyCarsArray().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarViewCell", for: indexPath) as! CarViewCell
        
        let car = Car.getDummyCarsArray()[indexPath.row]
        cell.setup(car: car)
        
        return cell
    }
    
    
    
}

