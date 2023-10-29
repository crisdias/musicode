import Foundation

class Pessoa {
    var residencia: String

    init(residencia: String) {
        self.residencia = residencia
    }
    
    func possoFicar(trens: [Date]) -> Bool {
        let calendar = Calendar.current
        let primeiroTrem = calendar.component(.day, from: trens[0])
        let segundoTrem = calendar.component(.day, from: trens[1])
        
        if primeiroTrem != segundoTrem {
            return false
        } else {
            return true
        }
    }
}

let eu = Pessoa(residencia: "Jaçanã")
let trens = horariosTrens(destino: eu.residencia)

while eu.possoFicar(trens: trens) {
    sleep(60)
    trens = horariosTrens(destino: eu.residencia)
}

print("Não posso ficar nem mais um minuto com você.")

// TODO v1.1: verificiar quantidade de objetos irmãos da classe Pessoa