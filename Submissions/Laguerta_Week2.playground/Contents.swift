//: Simple Values
//: 1. Create a constant with an explicit type of Float that equals 4.
let explicitFloat: Float = 4.0

//: 2. Try removing the conversion to String from the last line. Copy the error and place it in a block comment below this block of code.
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

/*
 error: Laguerta_Week2.playground:2:24: error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'
 let widthLabel = label + width
                  ~~~~~ ^ ~~~~~
*/
//: 3. Use \() to include a floating-point calculation in a string and to include someone's name in a greeting.
var name = "Sandra"
let ounces: Float = 1.1
print("Hi, \(name)! Did you know that healthy parakeets should weigh between \(ounces) and \(ounces + 0.3) ounces? So cute! Very small!")

//: Control Flow
//: 1. Change optional Name to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else{
    greeting = "Who are you, stranger?"
}
print(greeting)
//When optionalName = nil and there is no added else clause, nothing is returned. Now, "Who are you, stranger?" will be returned if
//option name is nil.

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
/*
 error: Laguerta_Week2.playground:32:1: error: switch must be exhaustive
 switch vegetable {
 ^
*/
//: 3. Add another variable to keep track of which kind of number was the largest, as well as what that largest number was.

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var kindOfLargest = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            kindOfLargest = kind
        }
    }
}
print(largest)
print(kindOfLargest)
