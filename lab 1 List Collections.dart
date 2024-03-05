int findHighestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    return null; // or throw an exception as per your requirement
  }
  int highest = numbers[0];
  for (int number in numbers) {
    if (number > highest) {
      highest = number;
    }
  }
  return highest;
}

void main() {
  List<int> numbersList = [10, 30, 20, 50, 40];
  int highestNumber = findHighestNumber(numbersList);
  print("Highest Number: $highestNumber");
}
