//: velocimetro

import UIKit

let velocidades = ["Apagado", "VelocidadBaja", "VelocidadMedia", "VelocidadAlta"]

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = .Apagado
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var actual : Int = 0, velocidadEnCadena : String = ""
        let resultado = (actual, velocidadEnCadena)
        for i in 0...151 {
            switch i {
            case 0:
                actual = 0
                velocidadEnCadena = "Apagado"
            case 20:
                actual = 20
                velocidadEnCadena = "VelocidadBaja"
            case 50:
                actual = 50
                velocidadEnCadena = "VelocidadMedia"
            case 150:
                actual = 120
                velocidadEnCadena = "VelocidadAlta"
            default:
                return resultado
            }
        }
        return resultado
    }
}

var nuevoAuto = Auto()
nuevoAuto.cambioDeVelocidad()

for i in 1...20 {
    nuevoAuto.cambioDeVelocidad()
}




