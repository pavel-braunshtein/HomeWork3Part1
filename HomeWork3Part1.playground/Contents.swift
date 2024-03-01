import Foundation
import Darwin
/*
 
 Домашнє завдання 3
 
 Частина 1
 
 */

/*
 
 Розділ 1 - Потік керування
 
 - Цикли
 
 */
//MARK: - Пункт 1.1
// Псевдонім для зберігання деталей товару
typealias ProductInfo = (String, Double, String, String, String)

// Користувач в інтернет-магазині додав наступні товари у кошик,
// але ще не визначився, яку саме відеократу придбати:
/*
 
 
 
 Викороистовуючи цикл For виведіть у консоль усю інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 Сокет: значення, Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
     Сокет: s1151, Процессор: Intel
    ------------------------------------------------------
 */
let cart: [ProductInfo] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socet: "sAM4", processor: "AMD")
]
for cartIndex in 0 ..< cart.count{
    let pname = cart[cartIndex]
    print("------------------- \(cartIndex + 1) -------------------------------")
    print("Назва товару: \(pname.0)")
    print("Ціна: \(pname.1) \(pname.2)")
    print("Сокет: \(pname.3)")
    print("Процессор: \(pname.4)")
}
    print("\n")






/*
 
MARK: - Пункт 1.2
 
 Викороистовуючи цикил For in виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD
     Процессор: Intel
    ------------------------------------------------------
 */
for cartIndex in 0 ..< cart.count{
    let pname = cart[cartIndex]
    print("------------------- \(cartIndex + 1) -------------------------------")
    print("Назва товару: \(pname.0)")
    print("Процессор: \(pname.4)")
}
print("\n")




/*
 
 MARK: - Пункт 1.3
 
 Викороистовуючи цикил While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Ціна: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Ціна: 1717.00 ₴
    ------------------------------------------------------
 */
var counter = 0
while counter < cart.count{
    let pname = cart[counter]
    print("------------------- \(counter + 1) -------------------------------")
    print("Назва товару: \(pname.0)")
    print("Ціна: \(pname.1)")
    counter += 1
}
print("\n")



/*
 
 Пункт 1.4
 
 Викороистовуючи цикил Repeate While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Сокет: s1151
    ------------------------------------------------------
 */
var counter1 = 0
repeat {
    let pname = cart[counter1]
    print("------------------- \(counter1 + 1) -------------------------------")
    print("Назва товару: \(pname.0)")
    print("Сокет: \(pname.3)")
    counter1 += 1
} while counter1 < cart.count
print("\n")



/*
 
 Розділ 1 - Потік керування
 
 - If / if else
 
 */

/*
 
 Пункт 1.5
 
 Викороистовуючи будь-який з циклів та умовні оператори if else
 виведіть у консоль тільки ті товари
 - ціна яких менша 5000.00 грн.
 - значення socket є s1151
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    Сокет: s1151
    ------------------------------------------------------
 */
var counter2 = 0
var ppp = cart[counter2]

for counter2 in 0 ..< cart.count{
    let pname = cart[counter2]
    
    if pname.1 <= 5000.0 {
        print("------------------- \(counter2 + 1) -------------------------------")
        print("Назва товару: \(pname.0)")
        print("Ціна: \(pname.1 )\(pname.2)")
        print("Сокет: \(pname.3)")
        counter2 + 1
    }
    else {
        false
    }
}
print("\n")



/*
 
 Розділ 1 - Потік керування
 
 - Switch
 
 */

/*
 
 Пункт 1.6
 
 Викороистовуючи будь-який з циклів та умовні оператор switch
 додати перевірку через case на відповідність процесору товару AMD чи Intel,
 значення процесору брати з опису товару
 (дивись Примітка після прикладу приклад switch) і
 вивести у консоль наступну інформацію про всі товари
 - назва товару
 - ціна товару
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ------------------------------------------------------

 * Примітка
    
     let processorStringValue = "Значення процесору з продукту"
 
     switch processorStringValue {
     case "Intel":
         // друк інформації для товару з процесором Intel
     case "AMD":
         // друк інформації для товару з процесором AMD
     default:
         // друк пустої строки
     }
    
 */
var counter3 = 0

for counter3 in 0 ..< cart.count{
    let pname1 = cart[counter3]
    switch pname1.4 {
    case "Intel":
        print("------------------- \(counter3 + 1) -------------------------------")
        print("Назва товару: \(pname1.0)")
        print("Ціна: \(pname1.1 )\(pname1.2)")
        print(pname1.4)
        counter3 + 1
    case "AMD":
        false
    default:
        print("")
        
    }
}
print("\n")
/*
 
 Розділ 2 - Функції
 
 */

/*
 
 Пункт 2.1
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію без параметрів,
 яка виведе інформацю про товари з кошика тільки з процесором Inetel
 у консоль у наступному форматі:
 
 ------------------- Inetel -------------------------------
 1 Назва товару: значення товару
 2 Назва товару: значення товару
 3 Назва товару: значення товару
 ...
 n Назва товару: значення товару // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Inetel -------------------------------
    1 Назва товару: ASRock H310CV-HD
    2 Назва товару: Asus Prime H310M-E R2.0
    ...
    n Назва товару: Asus WS C246 Pro // n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її
 
 */
func IntelSearcher(){
    print("------------------- \("Intel") -------------------------------")
    var counter4 = 0

    for counter4 in 0 ..< cart.count{
        let pname1 = cart[counter4]
        switch pname1.4 {
        case "Intel":
            print("\(counter4+1) Назва товару: \(pname1.0)")
            
            counter4 + 1
        case "AMD":
            false
        default:
            print("")
            
        }
    }
    print("------------------------------------------------------")
}
IntelSearcher()
print("\n")

/*
 
 Пункт 2.2
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію з параметром максимальна ціна (maxPrice: Double),
 яка виведе інформацю про товари з кошика тільки з ціною, яка менше за значення maxPrice
 у консоль у наступному форматі:
 
 ------------------- Товари з ціною менше значення -------------------------------
 1 Назва товару: значення, Ціна: знак валюти і значення
 2 Назва товару: значення, Ціна: знак валюти і значення
 3 Назва товару: значення, Ціна: знак валюти і значення
 ...
 n Назва товару: значення, Ціна: знак валюти і значення // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Товари з ціною менше 4500.00 -------------------------------
    1 Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ...
    n Назва товару: Asus WS C246 Pro, Ціна: 2299.0// n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її з максимальним значенням на свій розсуд для перевірки
 
 */
func priceSearcher(maxPrice: Double){
    print("------------------- Товари з ціною менше \(maxPrice) -------------------------------")
    var counter5 = 0
    for counter5 in 0 ..< cart.count{
        let pname = cart[counter5]
        
        if pname.1 <= maxPrice {
            print("\(counter5+1)) Назва товару: \(pname.0),","Ціна: \(pname.1 )\(pname.2)")
            counter5 + 1
        }
        else {
            false
        }
    }
    print("\n")
}
var rnd = Int.random(in: 2000...11000)
priceSearcher(maxPrice: Double(rnd))




/*
 
 Пункт 2.3
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію яка приймає параметром тип процесору (processor: String),
 та повертає найдорожчий товар (тобто поіністю елемент типу ProductInfo) з вказаним процесором processor
 
 результат записати у константу та вивести у консоль у форматі:
 ------------------- Найдорожчий товар за процесором значення -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
 
     ------------------- Найдорожчий товар за процесором Intel -------------------------------
     Назва товару: Asus WS C246 Pro, Ціна: 10979.00 ₴
     -----------------------------------------------------------------------------------------
 
 */
func procSearcher(processor: String) {
    var counter6 = 0
    let dmax = Double.greatestFiniteMagnitude
    
    print("------------ Найдорожчий товар за процесором \(processor) ---------")
    
    // Вычисляем максимальную цену один раз перед циклом
    let maxPrice = cart.filter { $0.4 == processor }.map { $0.1 }.max() ?? 0
    
    for counter6 in 0..<cart.count {
        let pname1 = cart[counter6]
        
        switch processor {
        case "Intel":
            if pname1.1 == maxPrice, pname1.4 == "Intel" {
                print("Назва товару: \(pname1.0), Ціна: \(pname1.1)\(pname1.2)")
            }
            
        case "AMD":
            if pname1.1 == maxPrice, pname1.4 == "AMD" {
                print("Назва товару: \(pname1.0), Ціна: \(pname1.1)\(pname1.2)")
            }
            
        default:
            print("1")
        }
    }
}
let processors = ["Intel", "AMD"]
let randomProcessor = processors.randomElement() ?? " "
procSearcher(processor: randomProcessor)


/*
 
 Розділ 3 - Перечислення / Enum
 
 */

/*
 
 Пункт 3.1
 
 Зарезервувати (описати) enum для типу процесора ProcessorType, який матиме 2 випадки (cases) з тестовим описом
 - intel = "Intel"
 - amd = "AMD"
 
 створити змінну типу створенного enum з якимось із значень
 
 */
enum ProcessorType:String {
    case Intel = "Intel"
    
    case AMD = "AMD"
}
var smthng:ProcessorType = .Intel




/*
 
 Пункт 3.2
 
 Зарезервувати (описати) enum для валюти (Currency), який матиме 3 випадки (cases) з тестовим описом
 - uah = "UAH"
 - usd = "USD"
 - eur = "EUR"
 
 створити змінну типу створенного enum з якимось із значень
 
 */

enum Currency: String {
    case uah = "UAH"
    case usd = "USD"
    case eur = "EUR"
}
var curr:Currency = .usd


/*
 
 Розділ 4 - Структури і класи
 
 */

/*
 
 Пункт 4.1

 Описати структуру MotherBoard (Материньска плата)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - socet типу String
 - processor типу ProcessorType (enum, оголошений у розділі Перечислення)
 
 створити змінну типу MotherBoard і спробувати поміняти їй інші значення
 
 */






/*
 
 Пункт 4.2

 Описати клас Product (опис продукту)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - name типу String
 - price типу Double
 - currency типу Currency (використати enum з розділу 3 пункт 3.2)
 - motherBoard типу MotherBoard (використати структуру MotherBoard з розділу 4 пункт 4.1)
 
 створити змінну типу Product і спробувати поміняти їй інші значення
 
 */






