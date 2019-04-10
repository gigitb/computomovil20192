import UIKit
//Ejercicio 10 de abril 2019
/*struct Person {
    var name: String
    func sayHello(){
        print ("Hello there!, My name is\(name)")
    }
}

var persona: Person = Person (name: "Marduk")
persona.sayHello()*/


/*
//Segundo ejercicio de estructurasç
struct Temperature {
    var celsius: Double
    var fahrenheit: Double
    var kelvin: Double
    //Vamos a tener dos inicializadores
    
  //self.celsius es de var celsius y el de = celsius es de var celsius
    init(celsius: Double) {
        self.celsius = celsius
        fahrenheit = celsius * 1.8 + 32
        kelvin = celsius + 273.15
        }
    init (fahrenheit: Double){
        celsius = (fahrenheit - 32)/1.8
        self.fahrenheit = fahrenheit
        kelvin = celsius + 273.15
        }
    init(kelvin: Double){
        celsius = kelvin - 273.15
        fahrenheit = celsius * 1.8 + 32
        self.kelvin = kelvin
    }
    
}

let instancia1 = Temperature(fahrenheit: 18.5)
instancia1.celsius
instancia1.celsius
instancia1.fahrenheit
instancia1.kelvin
//PROPIEDAD CALCULADA Y PROPIEDAD COMPUTADA
//CALCULADA: No depende de un inicializador
//COMPUTADA: Tiene inicializador el usuario las crea
*/

/*
/////////////////////////////////////////////////////////////////////
//OBSERVADORES
import Foundation
struct StepCounter{
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
               }
        didSet{
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
                            }
                   }
}
var stepsGema = StepCounter()
stepsGema.totalSteps
stepsGema.totalSteps = 10
stepsGema.totalSteps = 32*/

////////////////////////////////////////////////////////////////////
//
import Foundation
struct Temperature {
    static var boilingPoint = 100
    var celsius: Double
    static func hello(){
        print( "hola perro" )
    }
}
// es una propiedad que cambia todas las estructuras
//let instance = Temperature.boilingPoint solo pertenece al tipo de estructura
let instance1 = Temperature( celsius: 300.0)
let instance2 = Temperature( celsius: 200.0)

instance1.celsius
Temperature.boilingPoint = 500
instance2.celsius
Temperature.hello()











