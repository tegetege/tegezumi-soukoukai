import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'launch_url_from_string.dart';

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
          GestureDetector(
            onTap: () {
              launchUrlFromString('');
            },
            child: Image.asset('images/course_am.jpg'),
          ),
          const SizedBox(height: 32),
          Text(
            '午後コース',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {},
            child: Image.asset('images/course_pm.jpg'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
