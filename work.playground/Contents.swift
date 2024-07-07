import UIKit

var name = "Evgenii"

var surname = "Fomichev"

var age: Int = 25

var a = 134_564.35 + 59_001.61

var b = Int(a) + age

print(b)

print("Evgenii Fomichev  \(age)")

print(name + " " +  surname + " " + String(age))

if age % 2 == 0 {
    print("Evgenii \(a)")
} else if age % 2 != 0 {
    print(surname)
}
    

