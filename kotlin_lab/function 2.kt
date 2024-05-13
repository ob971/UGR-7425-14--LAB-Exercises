// Function to transform each string in a list to uppercase using map
fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

// Function to filter out numbers greater than a specified value from a list of integers using filter
fun filterNumbersGreaterThan(list: List<Int>, threshold: Int): List<Int> {
    return list.filter { it > threshold }
}

// Function to calculate the sum of all elements in a list of numbers using reduce
fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
    val strings = listOf("hello", "world", "kotlin")
    val transformedStrings = transformToUppercase(strings)
    println("Uppercase strings: $transformedStrings")
    
    val numbers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val threshold = 5
    val filteredNumbers = filterNumbersGreaterThan(numbers, threshold)
    println("Numbers greater than $threshold: $filteredNumbers")
    
    val sum = calculateSum(numbers)
    println("Sum of all numbers: $sum")
}
