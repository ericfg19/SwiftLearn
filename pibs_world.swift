let pibUSA = 22675200 // PIB dos Estados Unidos em 2021 (em milhões de dólares)
let pibChina = 16229800 // PIB da China em 2021 (em milhões de dólares)
let pibJapao = 5207400 // PIB do Japão em 2021 (em milhões de dólares)

if pibUSA > pibChina && pibUSA > pibJapao {
    print("Os Estados Unidos têm o maior PIB de todos, com \(pibUSA) milhões de dólares.")
} else if pibChina > pibUSA && pibChina > pibJapao {
    print("A China tem o maior PIB de todos, com \(pibChina) milhões de dólares.")
} else if pibJapao > pibUSA && pibJapao > pibChina {
    print("O Japão tem o maior PIB de todos, com \(pibJapao) milhões de dólares.")
} else {
    print("Há um empate em termos de PIB entre pelo menos dois países.")
}
