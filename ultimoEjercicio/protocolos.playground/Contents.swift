import UIKit

var str = "ULTIMO EJERCICIO"
str == str2
print(str)
print(str2)
class Shoe: CustomStringConvertible {
    static func == (lhs: Shoe, rhs: Shoe) -> Bool {
        if lhs.size == rhs.size {
            return true
        }
        return false
    }
    var description: String {
        return "Shoe (color: \(color) size: \(size)  hasLaces:  \(hasLaces)"
        
    }
    let color:String
    let size: Int
    let hasLaces: Bool
init(color: String, size: Int, hasLaces: Bool){
    self.color = color
    self.size = size
    self.hasLaces = hasLaces
    }
}
let zapato = Shoe(color: "Cafe", size: 18, hasLaces: false)
print(zapato)
print(huarache)
zapato == huarache

