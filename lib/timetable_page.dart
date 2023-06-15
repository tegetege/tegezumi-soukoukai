import 'package:flutter/material.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            SizedBox(
              height: 32,
              child: Event(time: '7:00', label: 'ゲートオープン'),
            ),
            SizedBox(
              height: 32,
              child: Event(time: '7:00', label: 'ゲートオープン'),
            ),
            SizedBox(
              height: 32,
              child: Event(time: '7:00', label: 'ゲートオープン'),
            ),
            SizedBox(
              height: 32,
              child: Event(time: '7:00', label: 'ゲートオープン'),
            ),
            SizedBox(
              height: 32,
              child: Event(time: '7:00', label: 'ゲートオープン'),
            ),
          ],
        ),
      ),
    );
  }
}

class Event extends StatelessWidget {
  const Event({
    super.key,
    required this.time,
    required this.label,
  });

  final String time;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        Text(time),
        const SizedBox(width: 16),
        Expanded(
          child: Text(label),
        ),
      ]),
    );
  }
}
