import UIKit

// 1.1 Создать строковую переменную name и заполни ее своим именем"
//var name = "Евгений"

//1.2 Создать строковую переменную surname явно указав тип с фамилией"
//var surname: String = "Фомичев"

//1.3 Создать int переменную age заполнить возрастом"
//var age: Int = 26

//1.4 Создай переменную которая в себе высчитывает выражаение 19_35_65.96 (твоя зп будущая)"
//var a = 134_564.35 + 59_001.61

//1.5 Сложи число полученное на предыдущем шаге со своим возрастом и распечатай print"
//var b = Int(a) + age

//print(b)


//1.6 Распечатай свое имя фамилию и возраст одной переменной 2мя способами (интерполяция строк и приведение типов)"
//print("\(name), \(surname), \(age)")

//print(name + " " +  surname + " " + String(age))


//1.7 Напиши условие при котором если твой возраст четное число то распечатай свое имя + зарплата иначе пусть печатает просто фамилию"
//if age % 2 == 0 {
   // print("\(name), \(a)")
//} else if age % 2 != 0 {
  //  print(surname)
//}

//1.8 создать переменную с именем default и засунь в нее свой рост

//let `default` = 189




// 2.1 Создай строку со значением "abcdedeabf"
var str = "abcdedeabf"


// 2.2 Проверь содержит ли данная строка букву "a" распечатай результат проверки (if).
if str.contains("a") {
    print("строка содержит буку а")
} else {
    print("буква отсутсвует")
}

// 2.3 Проверь содержит ли данная строка букву "y" распечатай результат проверки

if str.contains("y") {
    print("строка содержит букву У")
} else {
    print("в строке отсутсвует буква У")
}

// 2.4 Распечатай количество повторений символа "a" в строке

var count = 0
for character in str {
    if character == "a" {
        count += 1
    }
}

print("Буква (a) повторяется \(count) раз(а)")

// 2.5 Разверни строку исходную и распечатай (решить 2 разными способами)

print(String(str.reversed()))

var reversedstr = String(str.reversed())
print(reversedstr)

// 2.7 Создай строку со значением "abc" и строку со значением "def" и обьедини их (2мя разными способами)

var a: String = "abc"
var b: String = "def"

var c = a + b

a += b

// 2.8 Создай строчку со значением "car" замени в ней "r" на "p"


var d = "car"


if var index = d.firstIndex(of: "r") {
    d.replaceSubrange(index...index, with: "p")
}

print (d)

// 2.9 доп*. Создай строку "Привет Юра" и разбей их на 2 строки

var string = "Привет Юра"
var parts = string.split(separator: " ")
print((parts[0]))
print((parts[1]))


//Создай переменную опциональную типа Int или String и напиши все способы как можно избавиться от опционал чтобы получить непосредственно значение

var age: Int?
age = 26

if age != nil {
    print("Возраст пользователя \(age!)")
} else {
    print("Данные не были получены")
}

print("Возраст пользователя \(age!)")


if let newage = age {
    print("Возраст пользователя \(newage)")
} else {
    print("Данные не были получены")
}


let Defaultuserage = 26
var userDefaultdage : Int?

var userage = userDefaultdage ?? Defaultuserage
print(userage)


if age == 26 {
    print("Возраст равен 26")
}
else{
    print("Возраст не равен 26")
}

let printAge =  {
    guard let age = age else {
        print("Значение age равно nil")
        return
    }
    print("Возраст: \(age)")
}

printAge()









































    


