import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

showLoading() async {
  Future.delayed(Duration(milliseconds: 1), () {
    SmartDialog.showLoading();
  });
}

closeDialog() async {
  Future.delayed(Duration(milliseconds: 1), () {
    SmartDialog.dismiss();
  });
}
