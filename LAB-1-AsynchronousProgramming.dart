Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched successfully!";
}

Future<String> fetchData2() {
  return Future.delayed(
      Duration(seconds: 2), () => "Data fetched successfully!");
}

Future<void> main() async {
  print("Start of program 1");

  fetchData2().then((result) {
    print(result);
    print("End of program 1");
  });

  print("Start of program 2");

  String result = await fetchData();

  print(result);
  print("End of program 2");
}
