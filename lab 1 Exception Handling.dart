void throwError() {
  throw Exception('An error occurred');
}

void main() {
  try {
    throwError();
  } catch (e) {
    print('Error caught: $e');
  }
}
