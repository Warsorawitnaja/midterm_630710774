import 'package:flutter/material.dart';
import 'package:midterm_630710774/page/game_page.dart';

void main() {
  runApp(const MyApp());

}
class MyApp extends StatelessWidget { //// UI COMPONNENTS = ชิ้นส่วน UI || ปุ่มต่างๆ
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: GamePage(),
    );
  }
}
