import Foundation

class Calculator {
    var (add, subtract, multiply, divide): (AddOperation, SubtractOperation, MultiplyOperation, DivideOperation)
    init(add: AddOperation, subtract: SubtractOperation, multiply: MultiplyOperation, divide: DivideOperation) {
        self.add = add
        self.subtract = subtract
        self.multiply = multiply
        self.divide = divide
    }    
    func calculate(op:String, firstNumber: Double, secondNumber: Double) -> Double {
            switch op {
                case "+":
                    return add.operate(firstNumber: a, secondNumber:b)
                case "-":
                    return subtract.operate(firstNumber: a, secondNumber:b)
                case "*":
                    return multiply.operate(firstNumber: a, secondNumber:b)
                case "/":
                    return divide.operate(firstNumber: a, secondNumber:b)
                default:
                    return 0
                }
    }
 }

let calculator = Calculator(add: AddOperation(), subtract: SubtractOperation(), multiply: MultiplyOperation(), divide: DivideOperation())
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

print("addResult : \(calculator.calculate(op: "+", firstNumber:a, secondNumber:b))")
print("subtractResult : \(round(calculator.calculate(op: "-", firstNumber:a, secondNumber:b)*100)/100)")
print("multiplyResult : \(calculator.calculate(op: "*", firstNumber:a, secondNumber:b))")
print("divideResult : \(calculator.calculate(op: "/", firstNumber:a, secondNumber:b))")
