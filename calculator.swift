import Foundation

class Calculator {    
    func calculate(op:String, firstNumber: Double, secondNumber: Double) -> Double {
            switch op {
                case "+":
                    return firstNumber + secondNumber
                case "-":
                    return firstNumber - secondNumber
                case "*":
                    return firstNumber * secondNumber
                case "/":
                    return firstNumber / secondNumber
                case "%":
                    let intFirstNumber = Int(firstNumber)
                    let intSecondNumber = Int(secondNumber)
                    return Double(intFirstNumber % intSecondNumber)
                default:
                    return 0
                }
    }
 }

let add = AddOperation()
let subtract = SubtractOperation()
let multiply = MultiplyOperation()
let divide = DivideOperation()
var a = 6.2
var b = 4.3


class AddOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubtractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}

class DivideOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}

print("addResult : \(add.operate(firstNumber:a, secondNumber:b))")
print("subtractResult : \(round(subtract.operate(firstNumber:a, secondNumber:b)*100)/100)")
print("multiplyResult : \(multiply.operate(firstNumber:a, secondNumber:b))")
print("divideResult : \(divide.operate(firstNumber:a, secondNumber:b))")
