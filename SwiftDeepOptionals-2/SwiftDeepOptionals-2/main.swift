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
