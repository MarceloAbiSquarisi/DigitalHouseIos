//
//  ViewController.swift
//  Exercicio_TableView_001
//
//  Created by Marcelo Squarisi on 05/10/20.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var TableViewPessoa: UITableView!

    var arrayPessoas = [Pessoa]()

   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        TableViewPessoa.delegate = self
        TableViewPessoa.dataSource = self
        
                
        arrayPessoas.append(Pessoa(name: "Name_1", position: "Position_1", email: "Email_1") )
        arrayPessoas.append(Pessoa(name: "Name_2", position: "Position_2", email: "Email_2") )
        arrayPessoas.append(Pessoa(name: "Name_3", position: "Position_3", email: "Email_3") )
        arrayPessoas.append(Pessoa(name: "Name_4", position: "Position_4", email: "Email_4") )
        arrayPessoas.append(Pessoa(name: "Name_5", position: "Position_5", email: "Email_5") )
        arrayPessoas.append(Pessoa(name: "Name_6", position: "Position_6", email: "Email_6") )
        arrayPessoas.append(Pessoa(name: "Name_7", position: "Position_7", email: "Email_7") )
        arrayPessoas.append(Pessoa(name: "Name_8", position: "Position_8", email: "Email_8") )
        arrayPessoas.append(Pessoa(name: "Name_9", position: "Position_9", email: "Email_9") )
        arrayPessoas.append(Pessoa(name: "Name_10", position: "Position_10", email: "Email_10") )
        arrayPessoas.append(Pessoa(name: "Name_11", position: "Position_11", email: "Email_11") )
        arrayPessoas.append(Pessoa(name: "Name_12", position: "Position_12", email: "Email_12") )
        arrayPessoas.append(Pessoa(name: "Name_13", position: "Position_13", email: "Email_13") )
        arrayPessoas.append(Pessoa(name: "Name_14", position: "Position_14", email: "Email_14") )
        arrayPessoas.append(Pessoa(name: "Name_15", position: "Position_15", email: "Email_15") )

    }
}

extension  ViewController: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pessoa = arrayPessoas[indexPath.row]
        if let viewPessoa = PessoaViewController.getPessoaViewController(){
            viewPessoa.pessoa = pessoa
            present(viewPessoa, animated: true, completion: nil)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPessoas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PessoaViewCell", for: indexPath) as! PessoaViewCell

        let pessoa = arrayPessoas[indexPath.row]
        cell.setup(pessoa: pessoa)
        return cell
    }


}

