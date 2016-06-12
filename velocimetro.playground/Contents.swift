//: velocimetro

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

class Auto{
    
    var velocidad : Velocidades = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    init(velocidad : Velocidades){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        var actual : Int
        var velocidadEnCadena : String
        
        actual = velocidad.rawValue
        velocidadEnCadena = String(velocidad)
        
        if (velocidad == Velocidades.Apagado){
            velocidad = Velocidades.VelocidadBaja
        } else if (velocidad == Velocidades.VelocidadBaja){
            velocidad = Velocidades.VelocidadMedia
        } else if (velocidad == Velocidades.VelocidadMedia){
            velocidad = Velocidades.VelocidadAlta
        } else if (velocidad == Velocidades.VelocidadAlta){
            velocidad = Velocidades.VelocidadMedia
        } else {
            velocidad = Velocidades.Apagado
        }
        
        return (actual, velocidadEnCadena)
        
    }
    
}


var auto = Auto(velocidad: Velocidades.Apagado)
var vel : (Int, String)

for i in 0..<20 {
    vel = auto.cambioDeVelocidad()
    print(vel)
}