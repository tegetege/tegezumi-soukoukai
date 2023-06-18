import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'gunsai_map.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            '日程',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          const Text('2023年7月1日(土)'),
          const SizedBox(height: 32),
          Text(
            '会場アクセス',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 16),
          const Text('群馬サイクルスポーツセンター 多目的広場'),
          const Text('〒379-1411 群馬県利根郡みなかみ町新巻３８５３−３８５３'),
          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  _launchUrl('https://goo.gl/maps/kGDrnkS8Mao6iPkD7');
                },
                child: const Text('Google Map'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  _launchUrl('https://yahoo.jp/k_MReV');
                },
                child: const Text('Yahoo!カーナビ'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const GunsaiMap(),
          Text('会場マップ', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 16),
          const Text('「野外ステージ」エリアをパドックとして利用します(20~25台程度)'),
          const Text('走行車両優先で利用お願いいたします。'),
          const Text('見学に来られる方はマップ右上の「駐車場」をご利用ください。'),
          Image.asset('images/gunsai_park_map.jpg'),
          const Text('https://www.gunsai.jp/facility/'), //TODO:  リンク化する
        ]),
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $url');
  }
}
