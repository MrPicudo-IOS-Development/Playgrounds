import UIKit

func loveCalculator() {
    let score = Int.random(in: 1...100)
    print("Your love score is: \(score)")
    if(score > 80) {
        print("You love each other like Kaney loves Kaney. \n")
    } else if (score > 40) {
        print("You go together like Coke and Mentos. \n")
    } else {
        print("You'll be forever alone. \n")
    }
}

// Usamos un guión bajo en vez de una variable porque no necesitamos usar el valor de esa variable iterativa para que funcione bien el for.
print("Función con if-else: \n")
for _ in 1...10 {
    loveCalculator()
}

// Cambiamos toda la función a una estructura switch:
func loveSwitch() {
    let score = Int.random(in: 1...100)
    print("Your score is: \(score)")
    switch(score) {
        case ...40:
            print("You'll be forever alone. \n")
        case 41...80:
            print("You go together like Coke and Mentos. \n")
        case 81...100:
            print("You love each other like Kaney loves Kaney. \n")
        default:
            print("Error")
    }
}

print("\n\nFunción con switch: \n")
for _ in 1...10 {
    loveSwitch()
}

