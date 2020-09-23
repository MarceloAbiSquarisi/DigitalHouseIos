//
//  Calculadora.swift
//  Calcauladora
//
//  Created by Marcelo Squarisi on 20/09/20.
//

import Foundation

class Calculadora {
    
    
    private var resultado: Double = 0
    private var currentOperation: operationsEnum = .igual
    
   
    
    
    // MARK: Setters
    
    func setCurrentOperation (operation: operationsEnum){
        currentOperation = operation
    }
    
    func setAc(){
        resultado = 0
        currentOperation = .igual
    }
  
        
    // MARK: Getters
    
    func GetCurrentOperation() -> operationsEnum
    {
        return  currentOperation
    }
    
    func GetResultado() -> Double {
        return resultado
    }
    
    
    // MARK: Execute Operations
    
    // Intera os sobre a operação recebida e executa a operação correpondente
    
    func ReceiveOperationAndValue(value: Double, operation: operationsEnum)
    {
        switch operation {
        case .soma:
            Somar(number: value)
            
        case .subtracao:
            Subtrair(number: value)
            
        case .multiplicaco:
            Multiplicar(number: value)
            
        case.divisao:
            Divisao(number: value)
  
        default:
            Igualdade(number: value)
        }
        
    }
    
    //Intera sobre a CURRENTOPERATION para executar a operação definda
    private func Igualdade(number: Double){
        
        switch currentOperation {
        case .soma:
            Somar(number: number)
        case .multiplicaco:
            Multiplicar(number: number)
        case .subtracao:
            Subtrair(number: number)
        case.divisao:
            Divisao(number: number)
        default:
            break
        }
        currentOperation = .igual
    }
    
    
        
    private func Somar (number: Double) {
       
        currentOperation = .soma
        resultado = resultado + number
    }
    
    private func Multiplicar (number: Double) {
       
        currentOperation = .multiplicaco
        resultado = resultado * number
    }
    private func Subtrair (number: Double) {
       
        currentOperation = .subtracao
        resultado = resultado - number
    }
    
    
    private func Divisao (number: Double) {
       
        currentOperation = .soma
        resultado = resultado / number
    }
}
