/* Estudio de ciclos en Swift */

import Foundation

/* FOR LOOPS */

// Un arreglo es una colección ordenada de elementos, en donde pueden haber duplicados.
let fruits = ["Apple", "Pear", "Orange", "Mango", "Watermelon"]
// Los diccionarios son colecciones de llaves con sus respectivos valores, que se consultan a través de la llave.
let contacts = ["Adan": 123456789, "James": 987654321, "Amy": 153246798]
let word = "supercalifragilisticoespialidoso"

// Versión del ciclo for para imprimir los elementos de un arreglo como si fuera lenguaje C o Java:
for i in 0..<fruits.count {
    print(fruits[i])
}

// Versión optimizada del ciclo for para imprimir todos los elementos de un arreglo en Swift.
for fruit in fruits {
    print("Juice of \(fruit)")
}

/*  Existen conjuntos de elementos llamados "Set" que son una versión "más eficiente" que los arreglos, que se
    definen como "una colección no ordenada de elementos no duplicados" */
let books: Set = ["Calculus", "Java", "Think in C"]
for alien in books {
    print("I read the \(alien) book")
}

// Ejemplo de ciclo for con diccionarios.
for person in contacts {
    print("La llave del contacto es: ", person.key, " y su valor es: ", person.value)
}


/* WHILE LOOPS */

/* Vamos a crear un ciclo WHILE que se ejecute exactamente durante 1 segundo, usando un método del framework FOUNDATION para fechas y tiempo. */
var now = Date().timeIntervalSince1970 // Es un estándar en UNIX para medir el tiempo.
let oneSecondFromNow = now + 1

/*
while now < oneSecondFromNow { // Notemos la diferencia en color entre variables y constantes, además de variables que dependen de funciones o cálculos...
    now = Date().timeIntervalSince1970
    print("Waiting...")
}
*/

/* Ejercicio de la serie de Fibonacci */
func fibonacci(n: Int) {
    
    // Si salen del primer if, los valores de actual y previo serán 1 y 0, respectivamente.
    var actual = 1
    var previo = 0
    var aux = 0
    if n==0 || n==1 {
        if n==0 {
            print("[0]")
        }
        else {
            print("[0, 1]")
        }
    }
    else {
        print("[0, 1,", terminator: " ")
        for i in 0...n-2 {
            aux = actual
            actual += previo
            previo = aux
            print("\(actual)", terminator: "")
            if(i == n-2) {
                print("]")
            }
            else {
                print(", ", terminator: "")
            }
        }
    }
    
}

fibonacci(n: 10)
fibonacci(n: 5)


/* La plataforma no acepta la solución si no se guardan los valores de la serie en un arreglo... */

func fibonacciR(n: Int) {
    var previo = 0
    var actual = 1
    
    if n == 0 {
        print("La serie de fibonacci debe tener al menos 1 valor...")
    }
    else if n == 1 {
        print(previo)
    }
    else if n == 2 {
        print(previo, actual)
    }
    else {
        var serie = [previo, actual]
        for _ in 2..<n {
            let siguiente = previo + actual
            previo = actual
            actual = siguiente
            // Esta es la parte importante del código... Agregar nuevos elementos a un arreglo con el método append.
            serie.append(actual)
        }
        print(serie)
    }
}
