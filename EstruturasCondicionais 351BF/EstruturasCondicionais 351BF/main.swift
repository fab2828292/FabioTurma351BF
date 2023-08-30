//
//  main.swift
//  EstruturasCondicionais 351BF
//
//  Created by Fábio Oliveira Alegre on 24/08/23.
//

import Foundation

// MARK: - ESTRUTURAS CONDICIONAIS

// if -> Significa "SE"
// Tudo oque está na frente do "if" significa que está realizando uma validação para verificar se é VERDADEIRO OU FALSO

//if 1 + 1 == 2 {
//    // se entrar no primeiro bloco, significa que a condição é VERDADEIRA
//}

// Porem, não podemos prever sempre casos verdadeiros pois existe os casos FALSOS. Com isso utilizamos uma palavra reservada chamada ELSE

//if 1 + 1 == 3 {
//    // se entrar no primeiro bloco, significa que a condição é VERDADEIRA
//    print("Realmente, a condição é verdadeira")
//} else {
//    // se entrar no segundo bloco, significa que a condição é FALSA
//    print("Realmente, a condição é falsa")
//}


func validaMaiorIdade(idade: Int) {
    if idade >= 18 {
        print("Eita, agora pode ir preso em")
    } else {
        print("Continue estudando...")
    }
}

//validaMaiorIdade(idade: 18)

//func valorIngresso(eSocio: Bool) -> Int {
//    if eSocio == true {
//        return 300
//    } else {
//       return 500
//    }
//}
//
//var valorDoIngresso: Int = valorIngresso(eSocio: true)
//print(valorDoIngresso)

// Quem é sócio é 300 quem não 500

//func valorIngressoEmGrupo(quantidadeDePessoas: Int, quantidadeSocio: Int) -> Int {
//    if quantidadeSocio > quantidadeDePessoas {
//        return 0
//    } else {
//        let quantidadeNaoSocias: Int = quantidadeDePessoas - quantidadeSocio
//        let total = (quantidadeSocio * 300) + (quantidadeNaoSocias * 500)
//        return total
//    }
//}
//
//var valorDoIngresso: Int = valorIngressoEmGrupo(quantidadeDePessoas: 100, quantidadeSocio: 50)
//print(valorDoIngresso)

// Validações compostas

// && -> E -> todas as validações tem que ser verdadeiras
// || -> OU -> se uma das validações forem verdadeiras ele retorna true caso contrario false


// Neste metodo verificamos se o usuario tem carteira de motorista E tem o valor do carro de no minimo 10000.
// Caso alguma das condições sejam falsa não podemos comprar o veiculo. Para comprar TODAS DEVEM SER VERDADEIRAS

func vouComprarCarro(carteiraMotorista: Bool, valor: Double) -> Bool {
    if carteiraMotorista == true && valor >= 10000 {
        return true
    } else {
        return false
    }
}

var comprarCarro: Bool = vouComprarCarro(carteiraMotorista: true, valor: 20000)
//print(comprarCarro)


// Se o usuario gastou mais de 1000 reais OU ele tem o cartão fidelidade então ele tem desconto, caso contrario, sem desconto

func descontoLoja(valorTotal: Double, cartaoFidelidade: Bool) -> Bool {
    if valorTotal > 1000 || cartaoFidelidade == true {
        return true
    } else {
        return false
    }
}

var vouTerDesconto: Bool = descontoLoja(valorTotal: 5000, cartaoFidelidade: false)
print(vouTerDesconto)

//MARK: Desafios


//Desafio 1 -

func verificarAprovacao(nota1: Double, nota2: Double) -> String {
    let media = (nota1 + nota2) / 2
    
    if media >= 7 {
        return "Aluno aprovado"
    } else {
        return "Aluno reprovado"
    }
}

var nota1 = 8.5
var nota2 = 1.0

let resultado = verificarAprovacao(nota1: nota1, nota2: nota2)
print(resultado)

//Desafio 2 -

func desconto(total: Double) -> Double {
    if total < 100.0 {
        return total * 0.9 // 10% de desconto
    } else if total >= 100.0 && total <= 200.0 {
        return total * 0.85 // 15% de desconto
    } else {
        return total * 0.8 // 20% de desconto
    }
}

var totalCompra = 150.0
let totalComDesconto = desconto(total: totalCompra)

print("Total original: \(totalCompra)")
print("Total com desconto: \(totalComDesconto)")

//Desafio 3 -

func semaforo(cor: String) -> String {
    if cor == "vermelho" {
        return "PARE"
    } else if cor == "amarelo" {
        return "ATENÇÃO"
    } else if cor == "verde" {
        return "SIGA EM FRENTE"
    } else {
        return "PARÂMETRO INVÁLIDO"
    }
}

let cor1 = "vermelho"
let cor2 = "amarelo"
let cor3 = "verde"
let cor4 = "azul"

print(semaforo(cor: cor1))
print(semaforo(cor: cor2))
print(semaforo(cor: cor3))
print(semaforo(cor: cor4))

//Desafio 4 -

func decidirAtividade(eFimDeSemana: Bool, tenhoDinheiro: Bool) {
    if eFimDeSemana && tenhoDinheiro {
        print("VAMOS PASSEAR")
    } else {
        print("VAMOS FICAR EM CASA")
    }
}

var eFimDeSemana = true
var tenhoDinheiro = true

decidirAtividade(eFimDeSemana: eFimDeSemana, tenhoDinheiro: tenhoDinheiro)

//Desafio 5 -

func verificarParidade(numero: Int) -> Bool {
    return numero % 2 == 0
}

var numero1 = 10
var numero2 = 7

print(verificarParidade(numero: numero1)) // Deve imprimir true, pois 10 é par
print(verificarParidade(numero: numero2)) // Deve imprimir false, pois 7 é ímpar

//Desafio 6 -

func compararValores(valor1: Double, valor2: Double) -> String {
    if valor1 > valor2 {
        return "Bola"
    } else {
        return "Banana"
    }
}

var valorA = 7.5
var valorB = 5.0

let resultado1 = compararValores(valor1: valorA, valor2: valorB) // Deve retornar "Bola"
print(resultado1)

let resultado2 = compararValores(valor1: valorB, valor2: valorA) // Deve retornar "Banana"
print(resultado2)


//MARK: Desafios de casa

func calculateBMI(weight: Double, height: Double) -> Double {
    let bmi = weight / (height * height)
    return bmi
}

func getUserInput(prompt: String) -> Double {
    print(prompt, terminator: "")
    let input = readLine()
    
    if let inputValue = input, let value = Double(inputValue) {
        return value
    } else {
        print("Entrada inválida. Por favor, insira um valor numérico.")
        return getUserInput(prompt: prompt)
    }
}

func main() {
    print("Calculadora de IMC")
    
    let weight = getUserInput(prompt: "Insira o peso em kg: ")
    let height = getUserInput(prompt: "Insira a altura em metros: ")
    
    let bmi = calculateBMI(weight: weight, height: height)
    
    print("Seu IMC é: \(bmi)")
}

//Desafio 2

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

func main() {
    let rollResult = rollDice()
    
    switch rollResult {
        case 1:
            print("Você rolou um 1 - Cara triste")
        case 2:
            print("Você rolou um 2 - Cara feliz")
        case 3:
            print("Você rolou um 3 - Estrela")
        case 4:
            print("Você rolou um 4 - Lua")
        case 5:
            print("Você rolou um 5 - Coração")
        case 6:
            print("Você rolou um 6 - Carinha sorridente")
        default:
            print("Algo deu errado na simulação do dado.")
    }
}







