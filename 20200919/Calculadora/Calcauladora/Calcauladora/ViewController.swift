//
//  ViewController.swift
//  Calcauladora
//
//  Created by Marcelo Squarisi on 20/09/20.
//

import UIKit

class ViewController: UIViewController {



    // MARK: Proprietes
    
    var calculadora = Calculadora()
    var isOperating: Bool = false
    
       
    // MARK: Outlets
    
    @IBOutlet weak var ResultLabel: UILabel!
      
    
    // MARK: Actions
    
    @IBAction func NumericClicked(_ sender: NumericButton) {
        addTextToResultLabel(text: String(sender.tag))
    }
    
    
    @IBAction func OperationClicked(_ sender: CalcButton) {
        isOperating = true
        if let valueText = ResultLabel.text {
            if let value = Double(valueText){
                switch sender.tag {
                case 1:
                    calculadora.ReceiveOperationAndValue(value: value, operation: .soma)
                default:
                    calculadora.ReceiveOperationAndValue(value: value, operation:.igual)
          
        
        ResultLabel.text = String (calculadora.GetResultado())
            
            }
            }
        }
    }
        
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func addTextToResultLabel (text: String){
        if let textoAtual = ResultLabel.text {
            if !isOperating && textoAtual != "0"{
                ResultLabel.text = textoAtual + text
                return
            }
                ResultLabel.text = text
                isOperating = false
            }
        }
}
    
    




