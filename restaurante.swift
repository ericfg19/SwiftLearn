let valorConta = 200.1
let taxaDeServico = 0.1
let numPessoas = 3

let valorTotal = valorConta * (1 + taxaDeServico) 

let valorPessoa = valorTotal / Double(numPessoas) // Calcula o valor por pessoa

print("Cada pessoa deve pagar R$\(valorPessoa).")
