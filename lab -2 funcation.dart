double calculateAverage(List<num> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }
  double sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}


void main() {
  List<double> numbersList = [5, 15, 25, 35, 45];
  double average = calculateAverage(numbersList);
  print("Average: $average");
}
