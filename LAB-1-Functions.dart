double calculateAverage(List<double> numbers) {
  if (numbers.isEmpty) {
    return 0.0;
  }

  double sum = 0.0;
  for (double number in numbers) {
    sum += number;
  }

  double average = sum / numbers.length;
  return average;
}

void main() {
  List<double> numbers1 = [5.0, 10.0, 15.0, 20.0, 25.0];
  double average1 = calculateAverage(numbers1);
  print("Average for numbers1: $average1");
}
