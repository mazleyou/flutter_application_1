// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'current_location_screen.dart';
import 'search_places_screen.dart';
import 'simple_map_screen.dart';
import 'package:flutter/material.dart';

class _MapDemo extends State<MapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps Sample App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: _pushHome,
            tooltip: 'Go to home',
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SimpleMapScreen();
                  }));
                },
                child: const Text("Simple Map")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const CurrentLocationScreen();
                  }));
                },
                child: const Text("User current location")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const SearchPlacesScreen();
                  }));
                },
                child: const Text("Search Places"))
          ],
        ),
      ),
    );
  }

  void _pushHome() {
    Navigator.pop(context);
  }
}

class MapDemo extends StatefulWidget {
  const MapDemo({super.key});

  @override
  State<MapDemo> createState() => _MapDemo();
}
