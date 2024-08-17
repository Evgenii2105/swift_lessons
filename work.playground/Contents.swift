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


//let `default` = 189


//// 2.1 Создай строку со значением "abcdedeabf"
//var str = "abcdedeabf"
//
//
//// 2.2 Проверь содержит ли данная строка букву "a" распечатай результат проверки (if).
//if str.contains("a") {
//    print("строка содержит буку а")
//} else {
//    print("буква отсутсвует")
//}
//
//// 2.3 Проверь содержит ли данная строка букву "y" распечатай результат проверки
//
//if str.contains("y") {
//    print("строка содержит букву У")
//} else {
//    print("в строке отсутсвует буква У")
//}
//
//// 2.4 Распечатай количество повторений символа "a" в строке
//
//var count = 0
//for character in str {
//    if character == "a" {
//        count += 1
//    }
//}
//
//print("Буква (a) повторяется \(count) раз(а)")
//
//// 2.5 Разверни строку исходную и распечатай (решить 2 разными способами)
//
//print(String(str.reversed()))
//
//var result = " "
//for char in str {
//    result = "\(char)" + result
//}
//    print (result)
//
//// 2.7 Создай строку со значением "abc" и строку со значением "def" и обьедини их (2мя разными способами)
//
//var a: String = "abc"
//var b: String = "def"
//
//var c = a + b
//
//let result1 = a.appending(b)
//print(result1)
//
//
//// 2.8 Создай строчку со значением "car" замени в ней "r" на "p"
//
//
//var d = "car"
//
//
//if var index = d.firstIndex(of: "r") {
//    d.replaceSubrange(index...index, with: "p")
//}
//
//print (d)
//
////  2.9 доп*. Создай строку "Привет Юра" и разбей их на 2 строки
//
//var string = "Привет Юра"
//var parts = string.split(separator: " ")
//print((parts[0]))
//print((parts[1]))


// 3. Создай переменную опциональную типа Int или String и напиши все способы как можно избавиться от опционал чтобы получить непосредственно значение

//var age: Int?
//age = 26
//
//if age != nil {
//    print("Возраст пользователя \(age!)")
//} else {
//    print("Данные не были получены")
//}
//
//
//let age1 : String = "22"
//if Int(age1) != nil {
//    let ageInt = Int(age1)!
//    print("Возраст пользователя \(ageInt)")
//}
//
//
//print("Возраст пользователя \(age!)")
//
//var FIO: String?
//FIO = "Фомичев Евгений Вадимович"
//
//if let newFIO = FIO {
//    print("ФИО пользователя \(newFIO)")
//if let newage = age {
//    print("Возраст пользователя \(newage)")
//} else {
//    print("Данные не были получены")
//}
//
//
//let Defaultuserage = 26
//var userDefaultdage : Int?
//
//print("ФИО пользователя \(FIO!)")
//var userage = userDefaultdage ?? Defaultuserage
//print(userage)
//
//
//        let printAge =  {
//            guard let age = age else {
//                print("Значение age равно nil")
//                return
//            }
//            print("Возраст: \(age)")
//        }
//        
//        printAge()
//        
//    }

/* 4.1 Создай массив из Int. Заполни чем хочешь. Заполни через цикл и через repeating. Чтобы элементов по 10 было.
 Отсортируй по возрастанию и отфильтруй те которые деляется на 3 без остатка.*/

var array = Array(repeating: 10, count: 10)

var array1 = [Int]()

for them in 0..<10 {
    array1.append(Int.random(in: 0...50))
}

array1.sort()


let filteredArray = array1.filter { $0 % 3 == 0 }


//// 4.2 Создай Множество с любым набором и отфильтруй по убыванию

var sumSet: Set<Int> = [2, 5, 8, 15, 9, 4, 7]

var sumSet1 = sumSet.reduce(0, +)


/*  4.3 Создай словарь с типом [String: Any]. Добавь в него переменные типа Int, String, Bool массив и множество из шага выше (в качестве значения) ключи какие хочешь используй. Затем распечай каждое из значений из словаря 2 способами сначала по ключу потом через цикл. Любому из значений заданий значение nil именно чтобы было nil.*/

var a = 2
var b = 3
var c = a==b

var dictionary: [String:Any?] = ["Age": 26,
                               "Name": "Evgenii",
                               "Bool": c,
                               "Sum": sumSet1]

dictionary["Age"]? = nil

print(dictionary)


if let element1 = dictionary["Age"] as? Int{
    print(type(of: element1))
}

if let element = dictionary["Name"] as? String{
    print(type(of: element))
}

if let element = dictionary["Bool"] as? Bool{
    print(type(of: element))
}

if let element = dictionary["Sum"] as? Int{
    print(type(of: element))
}



// 4.4 Создай массив из опциональных чисел 10 умножь все данные в массиве на 5. Затем отфильтруй те которые больше 5 элемента в массиве

var arrayNumber: [Int?] = [3, 2 , 6, nil, 12, 10, 7, 9, 14, 5, 8, nil]
var multipliedArray = arrayNumber.compactMap { $0 }.map { $0 * 5 }

if multipliedArray.indices.count >= 4  {
    multipliedArray = multipliedArray.filter { $0 > multipliedArray[4] }
}

print(multipliedArray)


// 4.5 Посчитай сумму всех элементов в этом массиве. 3 способа

let noNilNumber = arrayNumber.compactMap { $0 }

let sumArray = noNilNumber.reduce(0, +)
print(sumArray)

var sumArray1 = 0
for number in noNilNumber{
    sumArray1 += number
}
print(sumArray1)

var i = 0
var sumArray2 = 0
while i < arrayNumber.count {
    if let number = arrayNumber[i] {
        sumArray2 += number
    }
    i += 1
}
print(sumArray2)

// 5

class Cat {
    private var name = "барсик" {
        didSet {
            if !name.isEmpty { print("Мяу - мяу") }
        }
    }

    func changeName(name: String) {
        self.name = name
    }
    private let weight: Double
    private let height: Double

    convenience init() {
        self.init(weight: 1.2, height: 1.2)
    }

    init(weight: Double, height: Double) {
       self.weight = weight
      self.height = height
      self.object = Cat()
    }

    var object: Cat
}
var cat = Cat(weight: 1.1, height: 1.1)
let cat1 = Cat()
let cat2 = Cat()
cat2.object = cat1


let cat22 = Cat.init(weight: 2.5, height: 3.5)
cat22.changeName(name: "Барсик")

struct Dog {
    private var name: String = "" {
        didSet {
            if !name.isEmpty { print("гав- гав") }
        }
    }

    var nameDog2: String {
        return name
    }

    private let weight1: Double = 2.1
    private let height1: Double = 2.1
    
    init() {
        self.init(name: "fs", weight1: 1.1, height1: 1.1)
    }

    init(name: String, weight1: Double, height1: Double) {
        self.name = name
       
    }

    mutating func setNewName(name: String) {
       self.name = name
    }
  

    var object: Dog {
           get { return Dog() }
           set {}
       }
}

// 6.1 Создай энам который хранит в себе типы кузовов машины (купе седан и тд)
    
class Car { }

class Sedan:Car {  }
    
class Coupe:Car {  }

class Cabriolet:Car {  }


enum CarBodyType {
    case sedan(Sedan)
    case coupe(Coupe)
    case cabriolet(Cabriolet)
    
    func printBody() {
        switch self {
        case .sedan(let sedan):
            print("это седан")
        case .coupe(let coupe):
            print("это купе")
        case .cabriolet(let cabriolet):
            print("Ура я купил кабриолет")
        }
    }
}

var CarBodyTypes = [CarBodyType]()
CarBodyTypes.append(.sedan(Sedan()))
CarBodyTypes.append(.cabriolet(Cabriolet()))
CarBodyTypes.append(.coupe(Coupe()))

// Oтдельно вне энама. Создай переменную которая хранит энама и затем в отдельном методе. проверь если данная переменая к примеру == купе то выведи (Ура я купил купе)

func check(carBodyType: CarBodyType) {
    switch carBodyType {
    case .sedan(_):
        print("Это седан")
    case .coupe(_):
        print("Это купе")
    case .cabriolet(_):
        print("Ура, кабриолет")
    }
}

check(carBodyType: .cabriolet(Cabriolet()))
check(carBodyType: .coupe(Coupe()))
check(carBodyType: .sedan(Sedan()))

// Создай энам отдельно со сторонами света (юг север) сделай им rawvalue String

enum Compass: String {
    case north
    case south
    case west
    case east
    case northEast
    
    static var allCases: [Compass] = [.north, .south, .east, .northEast, .west]
   
}

Compass.allCases[2]

for enumValeu in Compass.allCases {
    print(enumValeu.rawValue)
}
