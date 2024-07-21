import UIKit

//// 1.1 Создать строковую переменную name и заполни ее своим именем"
//var name = "Евгений"
//
////1.2 Создать строковую переменную surname явно указав тип с фамилией"
//var surname: String = "Фомичев"
//
////1.3 Создать int переменную age заполнить возрастом"
//var age: Int = 26
//
////1.4 Создай переменную которая в себе высчитывает выражаение 19_35_65.96 (твоя зп будущая)"
//var a = 134_564.35 + 59_001.61
//
////1.5 Сложи число полученное на предыдущем шаге со своим возрастом и распечатай print"
//var b = Int(a) + age

//print(b)


////1.6 Распечатай свое имя фамилию и возраст одной переменной 2мя способами (интерполяция строк и приведение типов)"
//print("\(name), \(surname), \(age)")
//
//print(name + " " +  surname + " " + String(age))
//
//
////1.7 Напиши условие при котором если твой возраст четное число то распечатай свое имя + зарплата иначе пусть печатает просто фамилию"
//if age % 2 == 0 {
//    print("\(name), \(a)")
//} else if age % 2 != 0 {
//    print(surname)
//}
//
////1.8 создать переменную с именем default и засунь в нее свой рост
//
//let `default` = 189


//Создай переменную опциональную типа Int или String и напиши все способы как можно избавиться от опционал чтобы получить непосредственно значение

var age: Int?
age = 26

if age != nil {
    print("Возраст пользователя \(age!)")
} else {
    print("Данные не были получены")
}


let age1 : String = "22"
if Int(age1) != nil {
    let ageInt = Int(age1)!
    print("Возраст пользователя \(ageInt)")
}


print("Возраст пользователя \(age!)")

var FIO: String?
FIO = "Фомичев Евгений Вадимович"

if let newFIO = FIO {
    print("ФИО пользователя \(newFIO)")
if let newage = age {
    print("Возраст пользователя \(newage)")
} else {
    print("Данные не были получены")
}


let Defaultuserage = 26
var userDefaultdage : Int?

print("ФИО пользователя \(FIO!)")
var userage = userDefaultdage ?? Defaultuserage
print(userage)


        let printAge =  {
            guard let age = age else {
                print("Значение age равно nil")
                return
            }
            print("Возраст: \(age)")
        }
        
        printAge()
        
    }











    


