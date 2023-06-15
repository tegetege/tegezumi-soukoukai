import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class GunsaiMap extends StatelessWidget {
  const GunsaiMap({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 64;
    return WebViewX(
      width: width,
      height: 240,
      initialContent:
          '<script type="text/javascript" src="https://map.yahoo.co.jp/embedmap/V3/?&cond=action:place;gid:bIpAsa4sJ1M&width=$width&height=240"></script>',
      initialSourceType: SourceType.html,
    );
  }
}
