import 'package:flutter/material.dart';
import 'package:mobile_prac_quiz/list_game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Practicum Quiz',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ListGame(),
    );
  }
}

