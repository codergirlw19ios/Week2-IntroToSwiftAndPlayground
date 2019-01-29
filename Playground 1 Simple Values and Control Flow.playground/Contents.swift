//: Simple Values
//: 1. Create a constant with an explicit type of Float that equals 4.
let explicitDoubleConstant: Float = 4
//: 2. Try removing the conversion to String from the last line. Copy the error and place it in a block comment below this block of code.
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
//: 3. Use \() to include a floating-point calculation in a string and to include someone's name in a greeting.
let vacationDays = Float("20")
var usedVacationDays = Float("19")
let nameOfEmployee = "Slacker"
var greetingWithFloat = "\(nameOfEmployee) has used up \(usedVacationDays) out of their maxiumum of \(vacationDays) for this year"
print(greetingWithFloat)
//: Control Flow
//: 1. Change optional Name to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else if optionalName == nil {
    greeting = "Hello, nobody"
}
print(greeting)
//if optionalName is nil it does not print a greeting
//After adding an else clause it prints "Hello, nobody"
//: 2. Try removing the default case. Copy the error and place it in a block comment below this block of code.
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
//Error message if we remove demove default is 'Switch must be exhaustive'
//: 3. Add another variable to keep track of which kind of number was the largest, as well as what that largest number was.

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestType = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestType = kind
        }
    }
}
print(largest)
print(largestType)
//prints 25 and Square
