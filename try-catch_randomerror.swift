enum MeuErro: Error {
    case erro1
    case erro2
}

func LancarErro() throws {
    let valor = Int.random(in: 0...1)
    
    if valor == 0 {
        throw MeuErro.erro1
    } else {
        throw MeuErro.erro2
    }
}

do {
    try LancarErro()
    print("Nenhum erro ocorreu")
} catch MeuErro.erro1 {
    print("Erro 1 ocorreu")
} catch MeuErro.erro2 {
    print("Erro 2 ocorreu")
} catch {
    print("Um erro desconhecido ocorreu: \(error)")
}
