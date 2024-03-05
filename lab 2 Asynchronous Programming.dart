Future<int> fetchNumber() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating a delay
  return 42;
}

Future<void> main() async {
  print('Fetching number...');
  int result = await fetchNumber();
  print('Received number: $result');
}
