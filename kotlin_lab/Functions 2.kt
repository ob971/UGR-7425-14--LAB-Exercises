// Function to find the maximum value in a list of integers
fun findMax(numbers: List<Int>): Int {
    require(numbers.isNotEmpty()) { "List must not be empty" }
    var max = numbers[0]
    for (number in numbers) {
        if (number > max) {
            max = number
        }
    }
    return max
}

// Function to filter even numbers from a list of integers
fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

// Function to calculate the average value of a list of doubles
fun calculateAverage(numbers: List<Double>): Double {
    require(numbers.isNotEmpty()) { "List must not be empty" }
    var sum = 0.0
    for (number in numbers) {
        sum += number
    }
    return sum / numbers.size
}

fun main() {
    val numbers1 = listOf(1, 3, 5, 7, 9, 2, 4, 6, 8)
    println("Maximum value: ${findMax(numbers1)}")
    
    val numbers2 = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9)
    println("Even numbers: ${filterEvenNumbers(numbers2)}")
    
    val numbers3 = listOf(1.0, 2.0, 3.0, 4.0, 5.0)
    println("Average: ${calculateAverage(numbers3)}")
}
