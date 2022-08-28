import 'package:flutter/material.dart';
import 'StartupNameGenerator.dart';
import 'chart.dart';
import 'running_schedule.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Library',
    initialRoute: '/',
    routes: {
      '/': (context) => const LibraryList(),
      '/StartupNameGenerator': (context) => const StartupNameGenerator(),
      '/Chart': (context) => const chart(),
      '/RunningSchedule': (context) => const RunningSchedule(),
    },
  ));
}

class _RandomWordsState extends State<LibraryList> {
  final _biggerFont = const TextStyle(fontSize: 18);
  final _itemList = <dynamic>[
    ['Startup Name Generator', '/StartupNameGenerator'],
    ['chart', '/Chart'],
    ['RUNNING SCHEDULE', '/RunningSchedule'],
    ['four', ''],
    ['five', ''],
    ['six', ''],
    ['seven', ''],
    ['eight', ''],
    ['nine', ''],
    ['ten', ''],
    ['eleven', '']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Library'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: _itemList.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text(
                _itemList[i][0],
                style: _biggerFont,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(_itemList[i][1]);
              },
            );
          }),
    );
  }
}

class LibraryList extends StatefulWidget {
  const LibraryList({super.key});

  @override
  State<LibraryList> createState() => _RandomWordsState();
}
