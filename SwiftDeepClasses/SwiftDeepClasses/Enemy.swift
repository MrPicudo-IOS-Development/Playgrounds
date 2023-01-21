/* Enemy.swift --> SwiftDeepClasses. Created by Miguel Torres on 19/01/23. */

class Enemy {
    /* Atributos o propiedades de la clase */
    
    var health: Int
    var attackStrength: Int
    
    /* Constructor */
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    /* Métodos */

    func move() {
        print("Walk fowards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
    
    func takeDamage(hit: Int) {
        self.health = self.health - hit
    }
}
