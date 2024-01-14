import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bhagwad_gita/db/database.dart';
import 'package:bhagwad_gita/screens/splash_screen.dart';
import 'package:bhagwad_gita/utils/wiredash_credentials.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiredash/wiredash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Database.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _navigatorKey = GlobalKey<NavigatorState>();

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
      builder: (theme, darkTheme) => Wiredash(
        projectId: projectId,
        secret: secret,
        child: MaterialApp(
          navigatorKey: _navigatorKey,
          title: 'Shreemad Bhagwad Gita',
          debugShowCheckedModeBanner: false,
          theme: theme,
          darkTheme: darkTheme,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
