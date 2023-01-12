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

greeting()

func personalGreeting(name: String) {
    print("¡Hola \(name)!")
}

personalGreeting(name: "Miguel")
personalGreeting(name: "Nelly")
personalGreeting(name: "Lalo")
personalGreeting(name: "Elias")
personalGreeting(name: "Job")
personalGreeting(name: "Eli")
