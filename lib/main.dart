
import 'package:flutter/material.dart';
import 'package:navigator/splash_screen.dart';

import 'about_screen.dart';
import 'bio_screen.dart';
import 'core/constants.dart';
import 'core/resources/manager_colors.dart';
import 'core/resources/manager_font_sizes.dart';
import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: ManagerFontSizes.s20,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.bioScreen: (context) => const BioScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
      },
    );
  }
}