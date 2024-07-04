import 'package:flutter/material.dart';

import 'launch_url_from_string.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Course(
            title: '午前コース',
            comments: '',
            imagePath: 'images/course_am.png',
          ),
          Course(
            title: '午後コース',
            comments: '',
            imagePath: 'images/course_pm.png',
          ),
          Course(
            title: '新入生用コース',
            comments: '',
            imagePath: 'images/course_beginner.png',
          ),
        ],
      ),
    );
  }
}

class Course extends StatelessWidget {
  const Course({
    super.key,
    required this.title,
    required this.comments,
    required this.imagePath,
  });

  final String title;
  final String comments;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(comments),
          ),
          Stack(
            children: [
              Image.asset(imagePath),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      launchUrlFromString('./assets/$imagePath');
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
