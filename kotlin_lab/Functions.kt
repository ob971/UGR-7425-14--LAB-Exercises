fun analyzeString(input: String): Triple<Int, Int, Int> {
    var wordCount = 0
    var uppercaseCount = 0
    var vowelCount = 0
    
    // Iterate through each character in the input string
    for (char in input) {
        when {
            // Count words whenever encountering a space
            char == ' ' -> wordCount++
            // Count uppercase letters
            char.isUpperCase() -> uppercaseCount++
            // Count vowels (both uppercase and lowercase)
            char in "aeiouAEIOU" -> vowelCount++
        }
    }
    
    // Increment word count by 1 for the last word
    wordCount++
    
    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    val input = "Write a function that takes a string as input."
    val (wordCount, uppercaseCount, vowelCount) = analyzeString(input)
    println("Word Count: $wordCount")
    println("Uppercase Letters Count: $uppercaseCount")
    println("Vowel Count: $vowelCount")
}
