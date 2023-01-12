import Foundation

// Creamos una variable String de tipo optional que dejaremos vacía al inicio.
var username: String? = nil

// Actualizamos el valor de nuestra variable
username = "Mr Picudo"

// Imprimimos el valor de la variable optional sin hacer el unwrap
print(username ?? " ") // Aquí estamos agregando un valor por default para esta variable opcional, para evitar un valor nulo.

// Y ahora lo imprimimos haciendo el unwrap
print(username!)

// Podemos ver el tipo de dato de cada variable si dejamos presionada la tecla control y damos clic sobre ella.
var unwrapUsername = username!

// Comprobamos que las variables que hemos creado son optionals y normales, respectivamente.
print(unwrapUsername)



// Ejercicio de optionals:

// Línea de código para recibir valores de la consola, pero por ahora le falta algo para funcionar.
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
    // Primero obtenemos los datos numéricos del diccionario.
    let scoreA: Int? = studentsAndScores["Amy"] // Para buscar un elemento en un diccionario, debemos usar corchetes, en vez de paréntesis.
    let scoreB: Int? = studentsAndScores["James"]
    let scoreC: Int? = studentsAndScores["Helen"]
    var max: Int?
    // Algoritmo para determinar el mayor de tres numéros.
    if(scoreA! < scoreB!) { // Si B es mayor que A
        max = scoreB
    }
    else if(scoreA! > scoreB!) { // Si A es mayor que B
        max = scoreA
    }
    else { // Y si son iguales
        max = scoreA
    }
    if(max! < scoreC!) { // Por último, compara el valor C y obtenemos el valor máximo en automático.
        max = scoreC
    }
    print("La puntuación más alta es: \(max!)")
}

// Mandamos a llamar a la función
highestScore(scores: studentsAndScores)

/* Notas:
    Cuando obtenemos un valor de un diccionario usando la llave correspondiente, lo que obtenemos es un optional. */
