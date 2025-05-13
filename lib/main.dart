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
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,
            brightness: Brightness.light
         )
      ),
      home: HomeActivity(), // Fixed: Call the constructor
    );
  }
}

class HomeActivity extends StatelessWidget {

  void _showmsg(BuildContext context){
     ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(content:  Text("Clicked"))
     );
  }
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("University Ai") ,
        elevation: 200,
        actions: [
          IconButton(onPressed:  (){
             _showmsg(context);
          }, icon: Icon(Icons.search_rounded))
        ],
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center( // Optional: Center the body text
        child: Text("Body"),
      ),
    );
  }
}
