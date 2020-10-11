//
//  ViewController.swift
//  20201005_LigarActions
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelFrist: UILabel?
    
    @IBOutlet weak var buttonFrist: UIButton?
    
    @IBOutlet weak var textFieldFrist: UITextField?
    
    @IBOutlet weak var labelSecond: UILabel?
    
    @IBOutlet weak var searchFrist: UISearchBar?
    
    @IBOutlet weak var imageView: UIImageView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelFrist?.text = "This is a Label"
        
        textFieldFrist?.placeholder = "This is a text field"
        
        labelSecond?.text = "This is another label"
        
        searchFrist?.placeholder = "This is a searchBar"
        
    }
    
    @IBAction func buttonFristClick(sender: UIButton)
    {
        print("Clicou")
    }


}

