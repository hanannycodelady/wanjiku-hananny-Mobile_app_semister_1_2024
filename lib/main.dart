import 'package:flutter/material.dart'; 
import 'Question_2.dart';
// import 'Question_3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Question_2 (), 
      // home:Question_3 (),
    );
  }
}
