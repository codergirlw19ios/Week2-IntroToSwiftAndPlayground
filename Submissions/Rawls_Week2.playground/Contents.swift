



//: 3. Use \() to include a floating-point calculation in a string and to include someone's name in a greeting.


//: Control Flow
//: 1. Change optional Name to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.
var optionalString: String? = "Bonjour"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
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
    print("Everything tastes good in soup.")
}

//: 3. Add another variable to keep track of which kind of number was the largest, as well as what that largest number was.

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
