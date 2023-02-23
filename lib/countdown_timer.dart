import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({Key? key}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  final DateTime _weddingDate = DateTime(2023, 4, 25, 12, 0, 0);

  String get _timeLeft {
    final duration = _weddingDate.difference(DateTime.now());
    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;
    return '$days days, $hours hrs, $minutes mins, $seconds secs';
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _timeLeft,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    );
  }
}
