import 'package:flutter/material.dart';
import 'package:hive_db/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // intiallize hive
  await Hive.initFlutter();

  //open boxes
  await Hive.openBox('testBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}
