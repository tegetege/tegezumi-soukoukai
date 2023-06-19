import 'package:flutter/material.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Stack(
            children: [
              Table(width: 64 + 240 + 32 + 240 + 32),
              Positioned(
                left: 64,
                width: 240,
                child: Column(
                  children: [
                    SizedBox(height: 36, child: Text('1日目')),
                    Event(height: 36, time: '7:00', label: 'ゲートオープン', text: ''),
                    SizedBox(height: 36 * 2),
                    Event(
                        height: 36,
                        time: '8:30',
                        label: 'ドライバーズミーティング',
                        text: ''),
                    Event(
                        height: 36 * 6,
                        time: '9:00',
                        label: '走行（午前の部）',
                        text: ''),
                    Event(
                        height: 36 * 2,
                        time: '12:00',
                        label: 'お昼休憩',
                        text: '園内レストラン利用可能'),
                    Event(
                        height: 36 * 6,
                        time: '13:00',
                        label: '走行（午後の部）',
                        text: ''),
                    Event(height: 36, time: '16:00', label: '走行終了', text: ''),
                    Event(
                        height: 36, time: '17:00', label: 'ゲートクローズ', text: ''),
                    Event(
                        height: 36, time: '17:30', label: '旅館チェックイン', text: ''),
                    SizedBox(height: 36 * 2),
                    Event(height: 36, time: '19:00', label: '夕食', text: ''),
                  ],
                ),
              ),
              Positioned(
                left: 336,
                width: 240,
                child: Column(
                  children: [
                    SizedBox(height: 36, child: Text('2日目')),
                    Event(height: 36, time: '7:30', label: '朝食', text: ''),
                    SizedBox(height: 36 * 5),
                    Event(
                        height: 36, time: '10:00', label: 'チェックアウト', text: ''),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Table extends StatelessWidget {
  const Table({super.key, this.width});
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: const Column(
        children: [
          Time(label: '7:00'),
          Time(label: '8:00'),
          Time(label: '9:00'),
          Time(label: '10:00'),
          Time(label: '11:00'),
          Time(label: '12:00'),
          Time(label: '13:00'),
          Time(label: '14:00'),
          Time(label: '15:00'),
          Time(label: '16:00'),
          Time(label: '17:00'),
          Time(label: '18:00'),
          Time(label: '19:00'),
          Time(label: '20:00'),
        ],
      ),
    );
  }
}

class Time extends StatelessWidget {
  const Time({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Row(
        children: [
          Text(label),
          const SizedBox(width: 16),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}

class Divider extends StatelessWidget {
  const Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      width: double.infinity,
      child: ColoredBox(color: Theme.of(context).dividerColor),
    );
  }
}

class Event extends StatelessWidget {
  const Event({
    super.key,
    required this.height,
    required this.time,
    required this.label,
    required this.text,
  });

  final double height;
  final String time;
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Row(children: [
            Text(time),
            const SizedBox(width: 16),
            Expanded(
              child: Text('$label\n$text'),
            ),
          ]),
        ),
      ),
    );
  }
}
