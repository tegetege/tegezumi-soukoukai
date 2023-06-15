import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            '午前コース',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Image.asset('assets/images/course_am.jpg'),
          const SizedBox(height: 32),
          Text(
            '午後コース',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          Image.asset('assets/images/course_pm.jpg'),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
