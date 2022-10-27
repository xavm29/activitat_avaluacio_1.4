import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/widgets/inherited_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedProfile(
      child: MaterialApp(
        title: 'Fitness app',
        theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(),
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: const Color(0xFFF896D8),
                  secondary: const Color(0xFFCA7DF9),
                  tertiary: const Color(0xFF564592),
                )),
        home: const Home(),
      ),
    );
  }
}
