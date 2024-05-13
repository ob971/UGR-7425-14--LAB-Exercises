fun main() {
    // Input variables
    print("Enter the first number: ")
    val number1 = readLine()?.toDoubleOrNull()
    if (number1 == null) {
        println("Invalid input for the first number.")
        return
    }

    print("Enter the second number: ")
    val number2 = readLine()?.toDoubleOrNull()
    if (number2 == null) {
        println("Invalid input for the second number.")
        return
    }

    print("Enter the operation (addition, subtraction, multiplication, division): ")
    val operation = readLine()

    // Perform the operation
    val result = when (operation) {
        "addition" -> number1 + number2
        "subtraction" -> number1 - number2
        "multiplication" -> number1 * number2
        "division" -> {
            if (number2 == 0.0) {
                println("Division by zero is not allowed.")
                return
            }
            number1 / number2
        }
        else -> {
            println("Invalid operation.")
            return
        }
    }

    // Print the result
    println("Result: $result")
}
