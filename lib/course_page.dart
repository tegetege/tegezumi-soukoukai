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
            title: '午前コース', comments: '作成中...\n',
            // '・午前コースはグリップで走ることを想定して作成しました.\n'
            // '  -> ラインの自由度を減らして、オンザレールに車をコントロール出来る必要があるようにしています.\n'
            // '・前半セクション(黒線&オレンジ線)は大きなコーナを利用しての荷重移動の練習を狙っています.\n'
            // '・青線セクションは小さなコーナで構成して、ハンドル捌きやターンの練習ができることを目的としています.\n',
            imagePath: 'images/now_making.png',
          ),
          Course(
            title: '午後コース',
            comments: '作成中...\n',
            // '・午後コースはドリフトで走ることも想定して作成してみました.\n'
            // '  -> 大きなコーナーで構成して、ラインの自由度を残したコース設定をしてみました.\n'
            // '・横Gがかかる時間が長くなるようにコース作成してみました.\n'
            // '  -> グリップ走行組からすると疲れちゃうかも?(もう少しバランスとった方が良いかもと思いつつ...)\n',
            imagePath: 'images/now_making.png',
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
