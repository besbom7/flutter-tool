import './core.dart';

main() {
  fetch();
}

Future<void> fetch() async {
  print("start");
  var result = await fetchData();
  print(result);
  print("end");
  TEST();
}

Future<String> fetchData() async {
  return Future.delayed(
      Duration(
        seconds: 3,
      ), () {
    return "TEST";
  });
}
