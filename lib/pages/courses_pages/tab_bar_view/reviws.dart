import 'package:flutter/material.dart';
import 'package:jobee/widgets/courses_widgets/review_temp.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ReviewTemp(),
      ),
    );
  }
}
