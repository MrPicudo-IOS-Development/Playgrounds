/* main.swift --> SwiftDeepOptionals-2. Created by Miguel Torres on 23/01/23. */

// Ejemplo de force unwrapping:
let myOptional: String?
myOptional = "Miguel Torres"
print(myOptional!)
let myOptional2: String? = nil
// print(myOptional2)

// Ejemplo de Check for nil value
if(myOptional != nil) {
    print(myOptional!)
}
if(myOptional2 != nil) {
    print(myOptional2!)
}
else {
    print("nil value found.")
}

// Ejemplo de Optional Binding
if let safeOptional = myOptional { // Aquí no podemos usar paréntesis para la condición del if, ya que va junto con el let.
    print("Safe optional: ", safeOptional) // Aquí no tenemos que forzar el unwrap, porque el safeOptional ya se guarda como una variable normal.
}
else {
    print("nil value found.")
}

// Ejemplo de Nil coalescing operator
let text: String = myOptional ?? "I am the default value 1"
print(text)

let text2: String = myOptional2 ?? "I am the default value 2"
print(text2)

// Ejemplo 1 de Optional Chaining
struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

// Objeto tipo nil
let optionalStruct: MyOptional?
optionalStruct = nil

// Objeto con valores
let optionalStruct2: MyOptional?
optionalStruct2 = MyOptional()

// Usamos el Nil Coalescing Operator para definir un valor por default en caso de que la estructura sea nula.
print(optionalStruct?.property ?? 0)
print(optionalStruct2?.property ?? 0)

optionalStruct2?.method()

// Ejemplo 2 de Optional Chaining
struct Monkey {
    /* Atributos */
    var age: Int? = nil
    /* Métodos */
    mutating func setAge(_ age: Int) {
        self.age = age
    }
}

var donkey: Monkey? = nil

// Imprimimos la edad del objeto, y en caso de que el objeto sea nulo, imprimimos -1
print(donkey?.age ?? -1)
// Definimos un mensaje que sale en caso de que no se pueda acceder al método porque el objeto es nulo.
donkey?.setAge(20) ?? print("Hola")

// Inicializamos el objeto, para que ya no sea un objeto nulo, pero la variable age sigue siendo de tipo optional.
donkey = Monkey()
print("Edad de Donkey (1): ", donkey?.age ?? -1) // Entonces, si la variable también es nula, se manda el error. Revisa objeto y variable.
donkey?.setAge(20) ?? print("Hola") // No hay ningún mensaje en consola aquí, porque si pudo acceder al método.
print("Edad de Donkey (2): ", donkey?.age ?? -1)

