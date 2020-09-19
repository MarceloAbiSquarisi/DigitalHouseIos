//
//  SearcBarExtention.swift
//  20200819Exercicio_01
//
//  Created by Marcelo Squarisi on 18/09/20.
//

import Foundation
import UIKit

extension ViewController: UISearchBarDelegate
{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let termoAPesquisar = SearchBarPesquisa.text, !termoAPesquisar.isEmpty {
            let resultadoPesquisa = GetResultadoPesquisa(termo: termoAPesquisar)
            setLabelResultadoPesquisaText(textoArray:  resultadoPesquisa)
                
            }        }
    }

