// To parse this JSON data, do
//
//     final tests = testsFromJson(jsonString);

import 'dart:convert';

Tests testsFromJson(String str) => Tests.fromJson(json.decode(str));

String testsToJson(Tests data) => json.encode(data.toJson());

class Tests {
  Tests({
    required this.test1,
    required this.test2,
  });

  String test1;
  List<Test2> test2;

  factory Tests.fromJson(Map<String, dynamic> json) => Tests(
        test1: json["test1"],
        test2: List<Test2>.from(json["test2"].map((x) => Test2.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "test1": test1,
        "test2": List<dynamic>.from(test2.map((x) => x.toJson())),
      };
}

class Test2 {
  Test2({
    required this.test,
  });

  dynamic test;

  factory Test2.fromJson(Map<dynamic, dynamic> json) => Test2(
        test: json["test"],
      );

  Map<dynamic, dynamic> toJson() => {
        "test": test,
      };
}
