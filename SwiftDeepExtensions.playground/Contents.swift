import UIKit

extension Double {
    func round(to places: Int) -> Double {
        var n = self // Representa el valor actual de la clase Double (el último número que se creó)
        let precisionNumber = pow(10, Double(places)) // El tipo de dato que usemos para el exponente determina el tipo de dato con el que termina la potencia.
        n *= precisionNumber
        n.round()
        n /= precisionNumber
        return n
    }
}

var valorPI = 3.141592
var valorPIR = String(format: "%.4f", valorPI)
print(valorPIR) // Valor redondeado en formato cadena
print(valorPI.round(to: 4)) // Valor redondeado en formato Double


/* Ahora vamos a trabajar con un tipo de dato UIButton */

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
button.backgroundColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 1)
// Podemos redondear el contorno del botón con métodos que ya existen para la clase UIButton
button.layer.cornerRadius = 50
button.clipsToBounds = true

// Pero ahora, podemos agrupar todo esto en una función que se puede llamar para cualquier botón usando extensiones
extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

// Creamos un nuevo botón
let button2 = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
button2.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
// Y usamos el método que agregamos con la extensión
button2.makeCircular()
