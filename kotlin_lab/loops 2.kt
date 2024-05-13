import kotlin.random.Random

fun generateRandomPassword(length: Int): String {
    val passwordChars = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '-', '+', '=', '{', '}', '[', ']', '|', '\\', ':', ';', '<', '>', ',', '.', '?', '/')
    val password = StringBuilder()
    
    repeat(length) {
        val randomIndex = Random.nextInt(0, passwordChars.size)
        password.append(passwordChars[randomIndex])
    }
    
    return password.toString()
}

fun main() {
    val passwordLength = 8 // Specify the length of the password here
    val password = generateRandomPassword(passwordLength)
    println("Generated password: $password")
}
