// ignore_for_file: deprecated_member_use

void throwErrorFunction() {
  throw Exception("An error occurred!");
}

void divideNumbers(int a, int b) {
  if (b == 0) {
    throw IntegerDivisionByZeroException();
  }
  print("Result: ${a / b}");
}

void someFunction() {
  try {
    // Code that may throw an exception
    throw Exception("An error occurred!");
  } finally {
    print(
        "This code always runs, regardless of whether an exception occurred or not.");
  }
}

void main() {
  print("Exercise 3");

  try {
    someFunction();
  } catch (e) {
    print("Caught an exception: $e");
  }

  print("Exercise 2");

  try {
    divideNumbers(10, 0);
  } catch (e) {
    if (e is IntegerDivisionByZeroException) {
      print("Cannot divide by zero!");
    } else {
      print("Caught an exception: $e");
    }
  }

  print("Exercise 1");

  try {
    throwErrorFunction();
  } catch (e) {
    print("Caught an exception: $e");
  }
}
