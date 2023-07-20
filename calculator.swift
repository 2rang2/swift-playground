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
//                return firstNumber % secondNumber
            default:
                return 0
            }
    }
}

let calculator = Calculator()
var a = 6.2
var b = 4.3

print("addResult : \(calculator.calculate(op:"+", firstNumber:a, secondNumber:b))")
print("subtractResult : \(calculator.calculate(op:"-", firstNumber:a, secondNumber:b))")
print("multiplyResult : \(calculator.calculate(op:"*", firstNumber:a, secondNumber:b))")
print("divideResult : \(calculator.calculate(op:"/", firstNumber:a, secondNumber:b))")
print("remainderResult : \(calculator.calculate(op:"%", firstNumber:a, secondNumber:b))")
