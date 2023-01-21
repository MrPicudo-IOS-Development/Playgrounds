/* main.swift --> SwiftDeepClasses. Created by Miguel Torres on 19/01/23. */

// Creamos un objeto de nuestra clase con el constructor que se creó en automático.
let skeleton = Enemy(health: 100, attackStrength: 20)

// Utilizamos el objeto para mostrar sus atributos y utilizar sus métodos.
print("The enemy skeleton has ", skeleton.health, " points of health")
print("and ", skeleton.attackStrength, " points of attack force.")
print(skeleton.move())
print(skeleton.attack())

// Podemos hacer lo mismo con otros objetos creados a partir de la clase Enemy
let skeleton2 = Enemy(health: 110, attackStrength: 22)
print("The skelenton 2 fights back! ", skeleton2.attack())

// Ahora creamos un objeto de la subclase Dragon
let redly = Dragon(health: 225, attackStrength: 39)
print("Redly has ", redly.health, "points of health.")
redly.talk(speech: "I am the final boss, go back.")
redly.move()
redly.attack()

// Podemos modificar el valor de los atributos (variables) que tienen nuestros objetos una vez que los creamos.
redly.health = 250
print("Redly has ", redly.health, "points of health.")

// Creamos un objeto nuevo pero copiando a otro objeto directamente.
let blu = redly
redly.takeDamage(hit: 10)

// Después de la copia del objeto, y modificar un valor de los atributos del original, mostramos el atributo del objeto copiado.
print("Blu has ", blu.health, "points of health.")
