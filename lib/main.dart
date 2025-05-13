import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Fixed: Instantiate MyApp properly
}

// Class name should start with uppercase (by Dart convention)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      debugShowCheckedModeBanner: false,
      home: HomeActivity(), // Fixed: Call the constructor
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center( // Optional: Center the body text
        child: Text("Body"),
      ),
    );
  }
}
