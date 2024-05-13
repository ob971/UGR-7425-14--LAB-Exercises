fun main() {
    // Declare variables
    val originalPrice = 100.0 // Example original price
    var discountPercentage = 0.6 // Example discount percentage (60%)
    val threshold = 0.5 // Example threshold for discount (50%)
    var finalPrice: Double

    // Check if discount is above the threshold
    if (discountPercentage > threshold) {
        println("The discount percentage is too high. Setting it to the threshold value.")
        discountPercentage = threshold
    }

    // Calculate final price
    finalPrice = originalPrice * (1 - discountPercentage)

    // Print original price, discount percentage, and final price
    println("Original Price: \$${String.format("%.2f", originalPrice)}")
    println("Discount Percentage: ${(discountPercentage * 100).toInt()}%")
    println("Final Price: \$${String.format("%.2f", finalPrice)}")
}
