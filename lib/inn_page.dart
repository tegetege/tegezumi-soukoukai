import 'package:flutter/material.dart';
import 'package:tegezumi/onoya_map.dart';
import 'package:url_launcher/url_launcher.dart';

class InnPage extends StatelessWidget {
  const InnPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '宿泊先',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            const Text('小野屋 八景苑'),
            const Text('〒379-1404 群馬県利根郡みなかみ町相俣76'),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _launchUrl('https://goo.gl/maps/hMQKwBNuwavbJXbS6');
                  },
                  child: const Text('Google Map'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    _launchUrl('https://yahoo.jp/43w8tg');
                  },
                  child: const Text('Yahoo!カーナビ'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const OnoyaMap(),
            const SizedBox(height: 16),
            Text(
              '駐車場',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            const Text('旅館前に止められるのは10~15台程度です'),
            const Text('第２駐車場を確認中です'),
            Image.asset('images/onoya_parking1.jpg'),
            const SizedBox(height: 16),
          ],
        ),
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
