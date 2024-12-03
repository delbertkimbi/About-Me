import 'package:deltech/auth/auth_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'delTech',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple ,
            useMaterial3: false,
            fontFamily: GoogleFonts.oswald().fontFamily),
        home: const LoginPage());
  }
}
