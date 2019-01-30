//: Simple Values
//: 1. Create a constant with an explicit type of Float that equals 4.
let explicitFloat: Float = 4.0

//: 2. Try removing the conversion to String from the last line. Copy the error and place it in a block comment below this block of code.
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//  let widthLabel = label + (width)
//  Binary operator '+' cannot be applied to operands of type 'String' and 'Int'

//: 3. Use \() to include a floating-point calculation in a string and to include someone's name in a greeting.
let myName = "Laurie"
let Greeting = "Hello my name is "
let age: Float = 52.1
let assignment1 = "\(Greeting)\(myName) and I am OLD, \(age)"
print(assignment1)

//: Control Flow
//: 1. Change optional Name to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
//var optionalName: String? = nil    // This produces false as output

var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

if let name = optionalName {
    greeting = "Hello, \(name)"
    print( greeting )
} else {
    greeting = "Goodbye"
    print("No name is a good name")
}
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
    print("Everything tastes good in soup.")  // With this commented out I get the error "Switch must be exhaustive "
}

//: 3. Add another variable to keep track of which kind of number was the largest, as well as what that largest number was.

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var whatKind: String? = nil

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            whatKind = kind
            largest = number
        }
    }
}
print(whatKind as Any)
print(largest)
