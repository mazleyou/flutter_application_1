import 'package:flutter/material.dart';
import 'running_schedule_page.dart';

class RunningSchedule extends StatefulWidget {
  const RunningSchedule({super.key});

  @override
  State<RunningSchedule> createState() => _RunningScheduleState();
}

class _RunningScheduleState extends State<RunningSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Running Schedule'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: _pushHome,
            tooltip: 'Go to home',
          ),
        ],
      ),
      body: const SingleChildScrollView(
          scrollDirection: Axis.vertical, child: BarChartPage()),
    );
  }

  void _pushHome() {
    Navigator.pop(context);
  }
}
