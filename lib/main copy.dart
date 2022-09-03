import 'package:flutter/material.dart';
import 'src/list_view/StartupNameGenerator.dart';
import 'src/chart/chart.dart';
import 'src/running_schedule/running_schedule.dart';
import 'src/like_button/like_button_demo.dart';
import 'src/map_view/MapDemo.dart';
import 'src/speech_to_text/speech_to_text.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Library',
    initialRoute: '/',
    routes: {
      '/': (context) => const LibraryList(),
      '/StartupNameGenerator': (context) => const StartupNameGenerator(),
      '/Chart': (context) => const chart(),
      '/RunningSchedule': (context) => const RunningSchedule(),
      '/LikeButtonDemo': (context) => const LikeButtonDemo(),
      '/MapDemo': (context) => const MapDemo(),
      '/SpeechToText': (context) => const SpeechSampleApp(),
    },
  ));
}

class _RandomWordsState extends State<LibraryList> {
  final _biggerFont = const TextStyle(fontSize: 18);
  final _itemList = <dynamic>[
    ['Startup Name Generator', '/StartupNameGenerator'],
    ['Chart Demo', '/Chart'],
    ['RUNNING SCHEDULE', '/RunningSchedule'],
    ['Like Button Demo', '/LikeButtonDemo'],
    ['Map Demo', '/MapDemo'],
    ['Speech to Text', '/SpeechToText'],
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
