/* main.swift --> Protocols and Delegates. Created by Miguel Torres on 08/02/23. */

// Protocolo que define las funciones que va a tener la clase que lo implemente.
protocol AdvanceLifeSupport {
    func performCPR()
}

// Clase que controla el Delegate (equivalente a la clase UITextField de Apple)
class EmergencyCallHandler {
    // Variable del mismo tipo del protocolo que se va a implementar para delegar.
    var delegate: AdvanceLifeSupport? // De tipo optional.
    
    // Función propia de la clase EmergencyCallHandler
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    // Función que hace uso de la variable delegate para llamar un método que se pide por el protocolo.
    func medicalEmergency() {
        // La variable delegate va a ser un objeto que se asignará en un ViewController.
        delegate?.performCPR()
    }
}

// 1ra implementación del protocolo
struct Paramedic: AdvanceLifeSupport {
    // Asignamos el delegate de la clase EmergencyCallHandler a esta estructura
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    // Definimos la función que está en el protocolo.
    func performCPR() {
        print("The paramedic does chest compressions...")
    }
}

// 2da implementación del protocolo
class Doctor: AdvanceLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions...")
    }
    
    func useStethescope() {
        print("Listening for heart sounds...")
    }
}

// 3ra implementación del protocolo
class Surgeon: Doctor { // Al heredar de la clase Doctor, ya es de tipo AdvanceLifeSupport
    // Definimos el método que exige el protocolo.
    override func performCPR() {
        // Primero hace lo mismo que un doctor haría para realizar CPR
        super.performCPR()
        print("Do better CPR...")
    }
    func useElectricDrill() {
        print("Whirr...")
    }
}

// Creamos los objetos de la clase y la estructura
let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)

// El delegate de Emilio va a ser Pete, por cómo se inicializa el objeto de la estructura Paramedic.
emilio.assessSituation()
emilio.medicalEmergency()

// Repetimos el proceso para diferentes manejadores de emergencia y delegados.
let alice = EmergencyCallHandler()
let mike = Doctor(handler: alice)
alice.assessSituation()
alice.medicalEmergency()

let john = EmergencyCallHandler()
let forge = Surgeon(handler: john)
john.assessSituation()
john.medicalEmergency()
