import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

Future testFunction() async {
  //07. initial Firebase ดูมาจาก web (https://firebase.flutter.dev/docs/overview/)
  WidgetsFlutterBinding.ensureInitialized(); //initial Firebase
  await Firebase.initializeApp(); //initial Firebase
}
