import UIKit

/* Primero vamos a crear funciones que reciban como parámetros otras funciones. */

// Esta función tiene como parámetro otra función.
func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2) // Gracias a este return, no debemos indicar los parámetros de la función add, al momento de llamar a la función calculator.
}

// Funciiones que vamos a usar como parámetro de otra función.
func add(n1: Int, n2: Int) -> Int {
    return n1 + n2
}

func multiply(n1: Int, n2: Int) -> Int {
    return n1 * n2
}

// Mandamos a llamar a la función que tiene como parámetro otra función.
calculator(n1: 10, n2: 27, operation: add) // No es necesario indicar los parámetros de la función interna por el tipo de return que tiene la función externa.
calculator(n1: 4, n2: 17, operation: multiply) // Esto es lo que vamos a estar replicando con closures, pasar la función de multiplicación...


/* Ahora vamos a hacer lo mismo que tenemos arriba pero con closures. */

func calculate(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

// Aquí vemos que cambiamos el parámetro de "operación", de una función por nombre, a un closure que define a toda la función, sin escribir su nombre.
calculate(n1: 5, n2: 10, operation: { (n1: Int, n2: Int) -> Int in return n1 * n2} )

// Pero podemos hacer eso mismo, simplificando primero los tipos de dato de los parámetros que tenemos dentro del closure.
calculate(n1: 17, n2: 3, operation: { (n1, n2) -> Int in return n1 * n2} )

// Además, Swift puede inferir que un closure debe retornar algo, entonces podemos eliminar el -> Int para que también infiera el tipo de dato del retorno.
calculate(n1: 8, n2: 13, operation: { (n1, n2) in return n1 * n2} )

// También podemos eliminar la palabra "return" del closure, porque al tener una operación dentro, se infiere que vamos a regresar el resultado de esa operación
calculate(n1: 7, n2: 21, operation: { (n1, n2) in n1 * n2} )

// Finalmente, usamos los parámetros anónimos que tiene Swift: $0 para el parámetro anónimo 1, $1 para el 2 y así sucesivamente...
calculate(n1: 13, n2: 13, operation: {$0 * $1})

// Asignamos esto último a una constante que podemos usar, para imprimir el resultado
let res1 = calculate(n1: 4, n2: 17, operation: {$0 * $1})
print(res1)

// Llevamos la simplificación al extremo haciendo un trailing closure
let res2 = calculate(n1: 11, n2: 11) {$0 * $1}
print(res2)


/* Vamos a implementar los closures en un array. */

var array = [1, 2, 3, 4, 5, 6, 7]

// Primero vamos a sumar a cada elemento, un 1, usando un ciclo for.
for i in 0...6 {
    array[i] = array[i] + 1
}
print(array)

// Ahora creamos una función que vamos a mandar como parámetro a la función map que tienen todos las colecciones de datos en Swift
func addOne(n: Int) -> Int {
    return n + 1
}
// Mandamos a llamar a la función .map del array, con el parámetro de addOne que acabamos de crear.
array.map(addOne)

// Ahora hacemos lo mismo de arriba, pero utilizando closures
print(array.map{$0 + 1})

// Vamos a convertir todos los enteros que tenemos en el array de arriba, a cadenas.
let newArray = array.map{"\($0 + 1)"}
print(newArray)

/* Finalmente, podemos estudiar más sobre closures en la Swift Languaje Guide de la página Swift.org */
