import 'package:flutter/material.dart';
import 'package:untitled/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness app',
      theme: ThemeData(
        textTheme:GoogleFonts.montserratTextTheme(),
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary:Color(0xFFF896D8),
          secondary: Color(0xFFCA7DF9),
          tertiary: Color(0xFF564592),


      )),
      home: const Home(),
    );
  }
}
