import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 64;
    return WebViewX(
      width: width,
      height: 280,
      initialContent:
          '<style>.max_temp{display:inline-block !important}.min_temp{display:inline-block !important}.temp{display:block !important}.rain_s{display:block !important}.pop-rain{display:block !important}.speed-wind{undefined}.deg-wind{undefined}.w_snow{undefined}.w_bg{background:linear-gradient(to right,#ffffff, #fff)}</style><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/weather-icons/2.0.12/css/weather-icons.min.css"><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/weather-icons/2.0.12/css/weather-icons-wind.css"><link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet"><script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script><script type="text/javascript">weather_value=7;lat = 36.678684;lon =138.999069;inputText1 = "群馬県利根郡みなかみ町";search_add = "群馬県利根郡みなかみ町";</script><script src="https://sitecreation.co.jp/wp-content/themes/emanon-premium-child/tpl/weather.js"></script><link id="PageStyleSheet" rel="stylesheet" href="https://sitecreation.co.jp/wp-content/themes/emanon-premium-child/tpl/style.css"><div id="weather-wrapper"><div id="weather1"></div><div id="weather2"></div>',
      initialSourceType: SourceType.html,
    );
  }
}
