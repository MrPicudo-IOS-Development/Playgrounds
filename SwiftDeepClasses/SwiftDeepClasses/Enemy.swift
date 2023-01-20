/* Enemy.swift --> SwiftDeepClasses. Created by Miguel Torres on 19/01/23. */

class Enemy {
    /* Atributos o propiedades de la clase */
    
    var health = 100
    var attackStrength = 10
    
    /* Métodos */

    func move() {
        print("Walk fowards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
    
}
