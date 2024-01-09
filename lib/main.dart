import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bhagwad_gita/screens/about_us_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        hintColor: Colors.amber,
        fontFamily: GoogleFonts.hind().fontFamily,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        hintColor: Colors.amber,
        fontFamily: GoogleFonts.hind().fontFamily,
      ),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Shreemad Bhagwad Gita',
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        home: const AboutUsScreen(),
      ),
    );
  }
}
