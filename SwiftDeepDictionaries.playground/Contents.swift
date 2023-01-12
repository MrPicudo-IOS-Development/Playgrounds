// Los diccionarios y los arrays son colecciones de datos que podemos utilizar en Swift.

// La manera más directa de crear un diccionario es:
let words = ["Babélico": "Perteneciente a la totte de Babel o relativo a esta. Algo confuso o inteligible.",
                "Uebos": "Una necesidad o cosa necesaria",
             "Inefable": "Algo que no puede ser dicho, explicado o descrito con palabras."]

// La sintaxis es: var nameDictionary = [key: value]

// Podemos crear diccionarios con distintos tipos de dato de la siguiente manera:
let numbersAlpha = [1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro", 5: "Cinco"]
let numbersBeta = ["Uno": 1, "Dos": 2, "Tres": 3, "Cuatro": 4, "Cinco": 5]

// Y accedemos a los valores de las llaves escribiendo el identificador y la llave entre corchetes:
print(words["Inefable"]!) // Agregamos el signo ! al final del diccionario porque el valor que regresa es un opcional.
print(numbersAlpha[4]!) // Regresa un opcional, para evitar un valor nulo en caso de que consultemos algo que no existe.
print(numbersBeta["Cinco"]!)

// La manera más adecuada de definir diccionarios con llaves de distinto tipo de dato es la siguiente:
let phonebook: [String: Int] = ["Miguel": 5618553878, "Jesús": 5555025645, "Nelly": 5560662232]

// Así, accedemos a los valores de cada llave:
print("El número de Nelly es: \(phonebook["Nelly"]!)")

// La diferencia de los diccionarios con los arreglos, al crearlos, está en los dos puntos :
let numbersArray = [13, 17, 21, 39, 45, 60, 69, 78, 83, 89, 93]

// Y al obtener los valores, la diferencia está en el tipo de dato arrojado, y que en los diccionarios se consulta con la llave, y en los arrays con el índice.
print(numbersArray[0])

// Para un array bidimensional, tenemos:
let matriz = [[3, 5, 7], [11, 13, 17], [23, 29, 31]]
print("El elemento (2,3) de la matriz es: \(matriz[1][2])")
