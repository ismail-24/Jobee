import 'package:flutter/material.dart';
import 'package:jobee/pages/splash_pages/splash_page.dart';

void main() {
  runApp(const Jobee());
}

class Jobee extends StatelessWidget {
  const Jobee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
