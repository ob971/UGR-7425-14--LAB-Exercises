void printMapKeysAndValues(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}

void main() {
  Map<String, int> myMap = {'a': 1, 'b': 2, 'c': 3};
  printMapKeysAndValues(myMap);
}
