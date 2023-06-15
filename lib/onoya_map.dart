import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OnoyaMap extends StatelessWidget {
  const OnoyaMap({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 64;
    return WebViewX(
      width: width,
      height: 240,
      initialContent:
          '<script type="text/javascript" src="https://map.yahoo.co.jp/embedmap/V3/?lon=138.89423&lat=36.72159&zoom=20&cond=action:place;maptype:basic;lon:138.89423;lat:36.72159&width=$width&height=240"></script>',
      initialSourceType: SourceType.html,
    );
  }
}
