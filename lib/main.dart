import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('uni AI'),

        ),
        body: Center(
          child: Text(
            'AI APP',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
