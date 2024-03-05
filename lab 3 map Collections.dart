List<T> removeDuplicates<T>(List<T> list) {
  List<T> uniqueList = [];
  for (T element in list) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    }
  }
  return uniqueList;
}

void main() {
  List<int> numbersList = [1, 2, 3, 1, 4, 2, 5];
  List<int> uniqueNumbersList = removeDuplicates(numbersList);
  print("List with Duplicates Removed: $uniqueNumbersList");
}
