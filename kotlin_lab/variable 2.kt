fun main() {
    // Declare variables
    val distance = 100.0  // distance value
    val originalUnit = "kilometers"  // unit of distance

    // Define conversion factors
    val conversionFactors = mapOf(
        "kilometers_to_miles" to 0.621371,  // 1 kilometer = 0.621371 miles
        "miles_to_kilometers" to 1.60934    // 1 mile = 1.60934 kilometers
    )

    // Function to convert distance
    fun convertDistance(distance: Double, originalUnit: String, targetUnit: String): Double {
        return when {
            originalUnit == "kilometers" && targetUnit == "miles" ->
                distance * conversionFactors["kilometers_to_miles"]!!
            originalUnit == "miles" && targetUnit == "kilometers" ->
                distance * conversionFactors["miles_to_kilometers"]!!
            else -> throw IllegalArgumentException("Conversion not supported")
        }
    }

    // Convert distance
    val convertedDistance = convertDistance(distance, originalUnit, "miles")

    // Print converted distance
    println("$distance $originalUnit is equal to $convertedDistance miles.")
}
