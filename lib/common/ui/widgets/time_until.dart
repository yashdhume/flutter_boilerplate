import 'dart:async';

import 'package:flutter/material.dart';

class TimeUntil extends StatefulWidget {
  const TimeUntil(
    this.date, {
    required this.timeCompleteString,
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  final DateTime date;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String timeCompleteString;

  @override
  State<TimeUntil> createState() => _TimeUntilState();
}

class _TimeUntilState extends State<TimeUntil> {
  late Timer _timer;
  late DateTime _currentTime;
  String _time = '';

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _updateString();
    _timer = Timer.periodic(const Duration(seconds: 1), _onTimeChange);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _onTimeChange(Timer timer) {
    setState(() {
      _currentTime = DateTime.now();
      _updateString();
    });
  }

  void _addPlural(bool shouldAdd) {
    if (shouldAdd) {
      _time += 's';
    }
  }

  void _addSpace() {
    _time += ' ';
  }

  void _updateString() {
    _time = '';
    final remaining = widget.date.difference(_currentTime);
    if (remaining.isNegative) {
      _time = widget.timeCompleteString;
      return;
    }

    final days = remaining.inDays;
    final hours = remaining.inHours - remaining.inDays * 24;
    final minutes = remaining.inMinutes - remaining.inHours * 60;
    final seconds = remaining.inSeconds - remaining.inMinutes * 60;

    if (days > 0) {
      _time += '$days day';
      _addPlural(days != 1);
    }
    _addSpace();
    if (hours > 0) {
      _time += '$hours hour';
      _addPlural(hours != 1);
    }
    _addSpace();
    if (minutes > 0) {
      _time += '${minutes + 1} minute';
      _addPlural(minutes != 1);
    }
    if (days == 0 && hours == 0 && minutes == 0) {
      _addSpace();
      _time += '$seconds second';
      _addPlural(seconds != 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _time,
      style: TextStyle(
        color: widget.color,
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,
      ),
    );
  }
}
