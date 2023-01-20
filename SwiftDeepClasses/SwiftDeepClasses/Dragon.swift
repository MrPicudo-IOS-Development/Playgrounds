/* Dragon.swift --> SwiftDeepClasses. Created by Miguel Torres on 19/01/23. */

class Dragon: Enemy {
    /* Atributos */
    var wingSpan = 2
    
    /* Métodos */
    
    // Función específica para la clase Dragon
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    // Función modificada para la clase Dragon, que heredó originalmente de la clase Enemy.
    override func move() {
        print("Fly fowards.")
    }
    
    // Sobreescribimos el método de atacar, pero llamando al método de la súper clase antes.
    override func attack() {
        super.attack()
        print("Spits fire, does 25 damage.")
    }
}
