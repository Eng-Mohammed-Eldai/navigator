import 'package:flutter/material.dart';

import 'bio_screen.dart';
import 'core/resources/manager_font_sizes.dart';
import 'core/resources/manager_font_weight.dart';
import 'core/resources/manager_strings.dart';
import 'core/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print('Hello I am init state');
    Future.delayed(Duration(seconds: 3), () {
      print('Hello I am in Future');
      // Navigator.pushNamed(context, Routes.bioScreen);
      Navigator.pushReplacementNamed(context, Routes.bioScreen);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const AboutScreen(),
      //   ),
      // );
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const AboutScreen(),
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          ManagerStrings.bioApp,
          style: TextStyle(
            fontSize: ManagerFontSizes.s24,
            fontWeight: ManagerFontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    print('Hello i am in dispose');
    super.dispose();
  }
}
