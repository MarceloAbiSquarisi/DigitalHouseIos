//
//  People.swift
//  TreinoTableView
//
//  Created by Marcelo Squarisi on 08/10/20.
//

import Foundation

class People{

    var name: String
    var email: String
    var photo: String

    tttt.delegate = self
    tttt.dataSource = self
        
    
    
    init(name: String, email: String, photo: String) {
        self.name = name
        self.email = email
        self.photo = photo
    }


    static func getDummyPeople() -> [People]{

        var arrayPessoas = [People]()
        arrayPessoas.append(People(name: "Nome_01", email: "Email_01", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_02", email: "Email_02", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_03", email: "Email_03", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_04", email: "Email_04", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_05", email: "Email_05", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_06", email: "Email_06", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_07", email: "Email_07", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_08", email: "Email_08", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_09", email: "Email_08", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_10", email: "Email_10", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_11", email: "Email_11", photo: "Pessoa.png"))
        arrayPessoas.append(People(name: "Nome_12", email: "Email_12", photo: "Pessoa.png"))
        return arrayPessoas

    }
}


extension People: UITableViewDelegate {

    // Ação quando o item é clicado 
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Definir aqui o que acontece quando seleciona um item
    }


}

extension People: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return .count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as! 
        cell.setup(dataModel: [indexPath.row])
        return cell
    }


    
}

 