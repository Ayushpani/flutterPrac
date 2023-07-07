import 'package:flutter_application_1/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.acme().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      routes: {
        "/" :(context) => LoginPage(),
        "/login":(context) => LoginPage(),
        "/Home":(context) => HomePage(),
      },
      
    );
  }
}