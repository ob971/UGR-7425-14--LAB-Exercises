fun main() {
    // Prompt user for input
    println("Enter the numeric grade (between 0 and 100):")
    val grade = readLine()?.toIntOrNull()

    // Check if input is valid
    if (grade != null && grade in 0..100) {
        // Assign letter grade based on the scale
        val letterGrade = when {
            grade >= 90 -> "A"
            grade in 80..89 -> "B"
            grade in 70..79 -> "C"
            grade in 60..69 -> "D"
            else -> "F"
        }
        // Print the letter grade
        println("Letter grade: $letterGrade")
    } else {
        println("Invalid input! Please enter a numeric grade between 0 and 100.")
    }
}
