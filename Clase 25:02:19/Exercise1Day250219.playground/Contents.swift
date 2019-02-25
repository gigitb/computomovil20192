import UIKit
// Propiedades: atributos, parametros, caracteristicas, valores, status, elementos, etc.
var str = "Ejercicio 1"
let age = 23
let months = 2
let name = "Gema"
let firstName = "Toledo"
let lastName = "Barrera"
let birthday = Date() //contexto como cuando nosotros hablamos de fronteras
let isHappy = true
//RECURSIVIDAD
//funciones
func hello () {
    let name = "otro nombre"
    print("Hola " + name) //para que esta función dijera hola y el nombre, aplicamos concatenación con el signo "+", el parametro
    //es una cadena
    print("Hola", name) //No dejo el espacio y lo respeta
    print("hola \(name)") //interpolación, el print es una acción, un comportamiento
}
hello()

let Birthday = Date() //framework que esta definiendo la cajita 
