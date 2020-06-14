//1. Реализовать функцию перевода из десятичной системы в двоичную, используя рекурсию.
func conversion(number: Int) -> String {
    if number != 0 {
     return String(conversion(number: number / 2)) + String(number % 2)
    } else {
        return ""
    }
}
print(conversion(number: 456))
//--------------------------------------------------------------------------
//2. Реализовать функцию возведения числа a в степень b:
//
//a. без рекурсии;
func power(a: Int, b: Int) -> Int {
    var newA = a
    for _ in 1..<b {
        newA *= a
    }
    return newA
}
print(power(a: 2, b: 3))
//--------------------------------------------------------------------------
//b. рекурсивно;
func RecPower(a: Int, b: Int) -> Int {
    if b > 1 {
        return a * RecPower(a: a, b: b-1)
    } else {
        return a
    }
}
print(RecPower(a: 2, b: 3))
//--------------------------------------------------------------------------
//c. *рекурсивно, используя свойство четности степени.
func RecPower2(a: Int, b: Int) -> Int {
    if b > 1 {
        if b % 2 > 0 {
            return a * RecPower(a: a, b: b-1)
        } else {
            return RecPower(a: a * a, b: b / 2)
        }
    } else {
        return a
    }
}
print(RecPower2(a: 2, b: 5))
