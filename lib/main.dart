import 'package:flutter_application_1/home_page.dart';
import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      
    );
  }
}