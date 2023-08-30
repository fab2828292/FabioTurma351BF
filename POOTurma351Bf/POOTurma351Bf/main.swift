//
//  main.swift
//  POOTurma351Bf
//
//  Created by Fábio Oliveira Alegre on 29/08/23.
//

import Foundation

// Classe

// Atributo /  Propriedades = caracteristicas de um objeto
// Açoes =  funçao /  método
// CLASSE TRABALHA COM REFERENCIA TYPE

// Como cirar uma classe?
// Utilizamos a palabra reservada class e na sequencia seu nome SEMPRE COM A PRIMEIRA LETRA MAISUCULA

//MARK:


// Construtores
// Os construtores tem a finalidade de indicar oque a sua classe necessita de uma valor inicial para seus atributos.
// Caso o seu atributo não tenha um valor inicial, você será obrigado a passar ele atraves do init
// Caso seu atributo TENHA um valor inicial, você não é obrigado a ter que utilizar o init

//class Pessoa {
//    var nome: String
//    var idade: Int
//    var peso: Double
//    var temCabelo: Bool = true
//
//    init(nome: String, idade: Int, peso: Double) {
//        self.nome = nome
//        self.idade = idade
//        self.peso = peso
//    }
//}
//
//var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 80)
//
//print(caio.nome)
//print(caio.idade)
//
//var felipe: Pessoa = Pessoa(nome: "Felipe", idade: 31, peso: 70)
//
//print(felipe.nome)
//print(felipe.idade)
//
//var alencar: Pessoa = Pessoa(nome: "Alencar", idade: 57, peso: 80)
//
//
//
//
////MARK: Desafio
//
//// Classe Carro
//
//class Carro {
//    var marca: String
//    var modelo: String
//    var ano: Int
//
//    init(marca: String, modelo: String, ano: Int) {
//        self.marca = marca
//        self.modelo = modelo
//        self.ano = ano
//    }
//
//    func ligar() {
//        print("O carro \(marca) \(modelo) está ligado.")
//    }
//
//    func acelerar() {
//        print("O carro \(marca) \(modelo) está acelerando.")
//    }
//}
//
//// Classe Cachorro
//class Cachorro {
//    var nome: String
//    var raca: String
//    var idade: Int
//
//    init(nome: String, raca: String, idade: Int) {
//        self.nome = nome
//        self.raca = raca
//        self.idade = idade
//    }
//
//    func latir() {
//        print("\(nome), o \(raca), está latindo.")
//    }
//
//    func brincar() {
//        print("\(nome) está brincando e se divertindo.")
//    }
//}
//
//// Classe Computador
//class Computador {
//    var marca: String
//    var modelo: String
//    var processador: String
//
//    init(marca: String, modelo: String, processador: String) {
//        self.marca = marca
//        self.modelo = modelo
//        self.processador = processador
//    }
//
//    func ligar() {
//        print("O computador \(marca) \(modelo) está ligado.")
//    }
//
//    func executarPrograma() {
//        print("O computador \(marca) \(modelo) está executando um programa.")

//MARK: Desafios

class Animal {
    var especie: String
    var idade: Int
    var habitat: String
    
    init(especie: String, idade: Int, peso: Double) {
        self.especie = "Leao"
        self.idade = 5
        self.habitat = "Savana"
    }
    
    func apresentar() {
        print("Esse é um \(especie) com \(idade) anos de idade, encontrado no habitat \(habitat).")
    }
}

class InstrumentoMusical {
    var nome: String
    var tipo: String
    var origem: String
    
    init(nome: String, tipo: Int, orgiem: String) {
        self.nome = "Violino"
        self.tipo = "5"
        self.origem = "Europa"
    }
    
    func mostrarDetalhes() {
        print("Este é um instrumento musical chamado \(nome), do tipo \(tipo), originário de \(origem).")
    }
}

//Desafio 2

class Livro {
    var titulo: String
    var autor: String
    var anoPublicacao: Int = 0
    
    init(titulo: String, autor: String) {
        self.titulo = "Aventuras Fantásticas"
        self.autor = "Pedro Álvares Cabral"
    }
    
    func apresentarLivro() {
        print("Este é o livro '\(titulo)' escrito por \(autor) e publicado em \(anoPublicacao).")
    }
    
    func apresentarAutor() {
        print("O autor do livro '\(titulo)' é \(autor).")
    }
}
