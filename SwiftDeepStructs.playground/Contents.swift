// Las estructuras sirven para determinar un tipo de dato personalizado, como las clases en Java
struct Town {
    /* Propiedades o atributos de la estructura */
    
    // Nombre del pueblo, definido por una variable de tipo String, definiendo el tipo de dato explícitamente.
    let name: String = "Torresland"
    // Ciudadanos del pueblo, definidos por un arreglo
    var citizens = ["Miguel Torres", "Daniel Ek", "Mark Zuckerberg"]
    // Recursos del pueblo, definidos por un diccionario
    var resources: [String: Int] = ["Wood": 100, "Rock": 25, "Gold": 125, "Food": 575]
    
    /* Métodos o funciones de la estructura */
    
    // Funciones que pueden realizar los objetos de esta estructura, necesitan la palabra reservada "mutating" para poder cambiar el valor de los atributos.
    mutating func cutWood() {
        self.resources["Wood"]! += 25
    }
    
    mutating func hunt() {
        self.resources["Food"]! += 25
    }
    
    mutating func dig() {
        self.resources["Gold"]! += 25
        self.resources["Rock"]! += 25
    }
    
    /* Inicializador o constructor de la estructura */
    init() {
        // Constructor vacío
    }
}

// Creamos un objeto de nuestra estructura, utilizando el constructor o inicializador.
var myTown = Town()

// Imprimimos información del objeto que acabamos de crear, accediendo a sus atributos usando la notación de punto.
print("Citizens of the town \(myTown.name): ", myTown.citizens)
print("We have \(myTown.resources["Wood"]!) tables of wood, \(myTown.resources["Gold"]!) oz of gold and \(myTown.resources["Food"]!) kg of food.")

// Actualizamos el atributo de citizens
myTown.citizens.append("Angela Wu")

// Volvemos a imprimir el atributo de citizens
print("Citizens of the town \(myTown.name): ", myTown.citizens)

// Llamamos a las funciones que modifican los recursos
myTown.cutWood()
myTown.hunt()
myTown.dig()

// Mostramos el nuevo conteo de recursos
print("We have \(myTown.resources["Wood"]!) tables of wood, \(myTown.resources["Gold"]!) oz of gold and \(myTown.resources["Food"]!) kg of food.")

// Si creamos un objeto nuevo de la estructura Town() con la palabra reservada let, no podremos usar los métodos mutables.
let chernobyl = Town()

// Mostramos el nuevo conteo de recursos
print("In chernobyl are \(chernobyl.resources["Wood"]!) tables of wood, \(chernobyl.resources["Gold"]!) oz of gold and \(chernobyl.resources["Food"]!) kg of food.")

// Ahora tratamos de modificar los recursos de chernobyl con las funciones mutables:
// chernobyl.cutWood() // El error dice "Cannot use muteting member on immutable value: "chernobyl" is a "let" constant

// Ahora vamos a crear una estructura de la manera más parecida posible a una clase de Java.
struct SeatIbiza {
    /* Atributos */
    let model: String
    let name: String
    let doors: Int
    var monthlyDistance: [String: Float]
    var maintenance: [String]
    
    /* Constructor */
    init(model: String, name: String, doors: Int, monthlyDistance: [String: Float], maintenance: [String]) {
        self.model = model
        self.name = name
        self.doors = doors
        self.monthlyDistance = monthlyDistance
        self.maintenance = maintenance
    }
    
    /* Métodos */
    func drive() {
        print("Driving...")
    }
}

// Creamos el objeto inicializando sus atributos con el constructor completo.
var ibizaStyle2016 = SeatIbiza(model: "2016", name: "Fiero", doors: 4, monthlyDistance: ["Abril": 1550, "Mayo": 2600, "Junio": 1800], maintenance: ["Julio", "Noviembre", "Marzo"])

// Esto es como imprimir el toString de una clase en Java.
print(ibizaStyle2016.self)

// Agregamos un mes en el atributo monthDistance (solo se puede utilizar el append sobre los arrays)
ibizaStyle2016.maintenance.append("Julio")

// Volvemos a mostrar la información del objeto:
print(ibizaStyle2016.self)
