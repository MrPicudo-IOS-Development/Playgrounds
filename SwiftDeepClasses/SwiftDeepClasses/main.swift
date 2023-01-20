/* main.swift --> SwiftDeepClasses. Created by Miguel Torres on 19/01/23. */

// Creamos un objeto de nuestra clase con el constructor que se creó en automático.
let skeleton = Enemy()

// Utilizamos el objeto para mostrar sus atributos y utilizar sus métodos.
print("The enemy skeleton has ", skeleton.health, " points of health")
print("and ", skeleton.attackStrength, " points of attack force.")
print(skeleton.move())
print(skeleton.attack())

// Podemos hacer lo mismo con otros objetos creados a partir de la clase Enemy
let skeleton2 = Enemy()
print("The skelenton 2 fights back! ", skeleton2.attack())

// Ahora creamos un objeto de la subclase Dragon
let redly = Dragon()
print("Redly has ", redly.health, "points of health.")
redly.talk(speech: "I am the final boss, go back.")
redly.move()
redly.attack()

// Podemos modificar el valor de los atributos (variables) que tienen nuestros objetos una vez que los creamos.
redly.health = 250
print("Redly has ", redly.health, "points of health.")
