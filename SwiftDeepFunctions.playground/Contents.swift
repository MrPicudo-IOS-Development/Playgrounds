// Función sencilla sin parámetros ni retorno
func greeting() {
    // Si no vamos a usar para nada el valor de la variable iterativa (por ejemplo "i"), podemos poner un guión bajo _ en su lugar en el ciclo for.
    for _ in 1...4 {
        print("¡Hola Mundo desde Swift PlayGrounds!")
    }
    // Variables dentro de la función greeting
    var name = "Miguel Torres"
    print("Yo soy " + name)
    // Función definida dentro de otra función (se aplicará el scope o "alcance" de la misma manera que con las variables)
    func greeting2() {
        print("Hoy es sábado 19 de noviembre del 2022")
    }
    greeting2()
}
// Mandamos a llamar a la función
greeting()

// Función con parámetro único (funciona como interno y externo)
func personalGreeting(name: String) {
    print("¡Hola \(name)!")
}
// Mandamos a llamar a la función con parámetro interno exclusivo.
personalGreeting(name: "Miguel")
personalGreeting(name: "Nelly")
personalGreeting(name: "Lalo")
personalGreeting(name: "Elias")
personalGreeting(name: "Job")
personalGreeting(name: "Eli")

// Función con parámetros interno y externo
func makeFriends(people name: String) {
    print("¡Hola \(name)!, ¿te gusta la pizza?")
}
// Mandamos a llamar a la función con parámetros interno y externo
makeFriends(people: "Eduardo")
makeFriends(people: "Nadia")
makeFriends(people: "Alejandro")

// Función con parámetro externo "eliminado"
func inviteFriend(_ name: String) {
    print("\(name), ¿Quieres venir con nosotros a comer pizza?")
}
// Mandamos a llamar a la función con parámetro externo eliminado
inviteFriend("Eduardo")
inviteFriend("Nadia")
inviteFriend("Alejandro")

// Función con parámetros y retorno
func dateNight(_ name: String) -> Bool {
    print("\(name), ¿quieres salir conmigo al cine esta noche?")
    if(name == "Nelly" || name == "Cristian") {
        return true
    }
    else {
        return false
    }
}
// Mandamos a llamar a la función con parámetros y retorno, dentro de un if porque su retorno es un boolean.
if(dateNight("Nelly")) {
    print("Genial, ¡vamos a ver Interestellar!")
}
else {
    print("Vale, ten un buen día.")
}

// Función que suma y resta dos números
func operate(_ num1: Double, _ num2: Double) -> (Double, Double) {
    return (num1 + num2, num1 - num2)
}

var results = operate(13.1, 17.7)
