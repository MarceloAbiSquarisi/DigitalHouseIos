//
//  ViewController.swift
//  20200819Exercicio_01
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK OutLets
    
    @IBOutlet weak var SearchBarPesquisa: UISearchBar!
    
      
    @IBOutlet weak var labelResultadoPesquisa: UILabel!
    
    // MARK Proprets
    
    var arrayListaItens = [PesquisaProtocol]()
    var dados = DadosFicticios()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Preenche o array com dados ficticios
        arrayListaItens = dados.dados
        
        SearchBarPesquisa.delegate = self
    }
    
    // Pesquisa por um termo e retora um array com os resultados
    func GetResultadoPesquisa(termo: String) -> [PesquisaProtocol]{
        var resultadoPesquisaArray = [PesquisaProtocol]()
        
        for item in arrayListaItens {
            if item.getTextoParaPesquisa().lowercased().contains(termo.lowercased()){
                resultadoPesquisaArray.append(item)
            }
        }
        return resultadoPesquisaArray
    }
    
    func setLabelResultadoPesquisaText(textoArray: [PesquisaProtocol]){
        var textTolabel: String = ""
        if textoArray.count >  0 {
            for item in textoArray{
                textTolabel = "\(textTolabel)\n\(item.getTextoParaPesquisa())"
            }
        }
        else {
            textTolabel = "Nada foi encontrado"
        }
        
        labelResultadoPesquisa.text = textTolabel
    }

}

