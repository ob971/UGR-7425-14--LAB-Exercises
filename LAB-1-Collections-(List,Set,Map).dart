int findHighestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0;
  }

  int highestNumber = numbers[0];
  for (int number in numbers) {
    if (number > highestNumber) {
      highestNumber = number;
    }
  }

  return highestNumber;
}

void printMapKeysAndValues(Map<dynamic, dynamic> inputMap) {
  inputMap.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}

List<T> removeDuplicates<T>(List<T> inputList) {
  List<T> uniqueList = [];
  for (T item in inputList) {
    if (!uniqueList.contains(item)) {
      uniqueList.add(item);
    }
  }
  return uniqueList;
}

void main() {
  //Exercise 3
  print('Exercise 3');
  List<int> numbersWithDuplicates = [1, 2, 3, 4, 2, 5, 6, 1];
  List<int> uniqueNumbers = removeDuplicates(numbersWithDuplicates);
  print("List with duplicates: $numbersWithDuplicates");
  print("List without duplicates: $uniqueNumbers");

  //Exercise 2
  print('Exercise 2');
  Map<dynamic, dynamic> sampleMap = {
    'name': 'abdi',
    'age': 25,
    'city': ' addis',
    'country': 'Ethio',
  };

  printMapKeysAndValues(sampleMap);

  //Exercise 1
  print('Exercise 1');
  List<int> numbers = [14, 27, 8, 42, 10];
  int highestNumber = findHighestNumber(numbers);
  print("The highest number in the list is: $highestNumber");
}
