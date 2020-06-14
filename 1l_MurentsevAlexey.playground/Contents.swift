import Foundation
//1.Ввести вес и рост человека. Рассчитать и вывести индекс массы тела по формуле I=m/(h*h); где m-масса тела в килограммах, h - рост в метрах.
let m = 90.0
let h = 1.9
func index(m: Double, h: Double) -> Double {
    let I = m / (h*h)
    return I
}
print(index(m: m, h: h))

//2. Найти максимальное из четырех чисел. Массивы не использовать.
let one = 3
let two = 5
let three = 7
let four = 9
func max(one: Int, two: Int, three: Int, four: Int) -> Int? {
    
    var result: Int
    
    if one > two && one > three && one > four {
        result = one
    } else if two > one && two > three && two > four {
        result = two
    } else if three > one && three > two && three > four {
        result = three
    } else {
        result = four
    }
    return result
    
}


//3. Написать программу обмена значениями двух целочисленных переменных:
//
//a. с использованием третьей переменной;
var a = 10
var b = 5
var c = a
a = b
b = c
print("a = \(a), b = \(b)")

//b. *без использования третьей переменной.
a = 3
b = 2
a = a + b
b = a - b
a = a - b
print("a = \(a), b = \(b)")

a = 3
b = 2
a = a * b
b = a / b
a = a / b
print("a = \(a), b = \(b)")

//4. Написать программу нахождения корней заданного квадратного уравнения.
var a1: Double = 6
var b1: Double = 1
var c1: Double = -1

var d = pow(b1, 2) - 4 * a1 * c1
if d > 0 {
    let x1 = (-b1 + pow(d, 0.5)) / 2 * a1
    let x2 = (-b1 - pow(d, 0.5)) / 2 * a1
    print("Корни квадратного уравнения \(x1) и \(x2)")
} else if d == 0 {
    let x1 = -b1 / 2 * a1
    print("Корень квадратного уравнения \(x1)")
} else {
    print("Ошибка. Дискриминант меньше нуля.")
}
