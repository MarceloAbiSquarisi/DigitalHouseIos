//
//  ViewController.swift
//  PickerView
//
//  Created by Marcelo Squarisi on 09/10/20.
//

import UIKit

class ViewController: UIViewController {

    var data: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        _ = Calendar.current.component(.weekday, from: data!)
        
    }


}

