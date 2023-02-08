/* main.swift --> SwiftDeepProtocols. Created by Miguel Torres on 06/02/23. */

protocol CanFly {
    // Los métodos que definamos dentro de protocolos, no pueden tener cuerpo.
    func fly()
}

// Creamos un 2do protocolo para mostrar la implementación de varios protocolos a una misma clase o estructura.
protocol TransportPeople {
    func transport()
}
// No todos los pájaros pueden volar
class Bird {
    var isFemale = true
    
    func layEgg() {
        if(isFemale) {
            print("The bird makes a new bird in a shell.")
        }
    }
}

// Heredamos de la clase Bird y aparte implementamos el protocolo CanFly
class Eagle: Bird, CanFly { // Primero se hace la herencia de la super clase y después se implementa el protocolo.
    // Ya dentro de la clase en la que se implementa el protocolo, podemos definir el método que aprendió del protocolo.
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    // Método exclusivo de la clase Eagle
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

// Solamente heredamos de la clase Bird, sin la implementación del protocolo, porque los pingüinos no pueden volar.
class Penguin: Bird {
    // Método exclusivo de la clase Penguin.
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    // Pedimos que el parámetro que se le pasa a la función, tenga implementado el protocolo CanFly
    func flyingDemo(flyingObject: CanFly) { // El "tipo de dato" del flyingObject es cualquiera que tenga implementado el protocolo CanFly.
        flyingObject.fly()
    }
}

// Estructura a la que implementamos el protocolo CanFly, que no necesita heredar nada de la clase Bird.
struct Airplane: CanFly, TransportPeople { // Los protocolos se pueden implementar en estructuras y en clases. No es como en la herencia.
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
    func transport() {
        print("The passangers get into the airplane.")
    }
}

// Creamos instancias de nuestras clases y estructuras.
let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
// Debemos crear un objeto de la estructura FlyingMuseum para acceder a la función a la que le vamos a pasar los objetos voladores creados.
let museum = FlyingMuseum()

// Usamos los métodos que tienen cada uno de los objetos.
myEagle.soar()
myPenguin.swim()

// Y usamos la función flyingDemo de la estructura FlyingMuseum
museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myPlane)
