import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tegezumi/course_page.dart';
import 'package:tegezumi/inn_page.dart';
import 'package:tegezumi/timetable_page.dart';
import 'package:tegezumi/top_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorSchemeSeed: Colors.blue,
    );

    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorSchemeSeed: Colors.blue,
    );

    return MaterialApp(
      title: 'てげずみ走行会',
      theme: lightTheme.copyWith(
        textTheme: GoogleFonts.mPlusRounded1cTextTheme(lightTheme.textTheme),
      ),
      darkTheme: darkTheme.copyWith(
        textTheme: GoogleFonts.mPlusRounded1cTextTheme(darkTheme.textTheme),
      ),
      themeMode: ThemeMode.dark,
      home: const HomePage(title: 'てげずみ走行会'),
    );
  }
}

class HomePage extends HookWidget {
  const HomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    final pageViewController = useMemoized(PageController.new, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('てげずみ走行会'),
      ),
      body: PageView(
        controller: pageViewController,
        children: const [
          TopPage(),
          TimetablePage(),
          CoursePage(),
          InnPage(),
        ],
        onPageChanged: (index) => selectedIndex.value = index,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (index) => pageViewController.animateToPage(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.toys),
            label: 'てげずみ走行会',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'タイムテーブル',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.turn_sharp_right),
            label: 'コース',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bed),
            label: '宿泊について',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
