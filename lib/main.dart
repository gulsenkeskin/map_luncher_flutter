import 'package:flutter/material.dart';
import 'package:map_luncher_flutter/show_directions.dart';
import 'package:map_luncher_flutter/show_marker.dart';


void main() => runApp(MapLauncherFlutter());

class MapLauncherFlutter extends StatefulWidget {
  @override
  _MapLauncherFlutterState createState() => _MapLauncherFlutterState();
}

enum LaunchMode { marker, directions }

class _MapLauncherFlutterState extends State<MapLauncherFlutter> {
  int selectedTabIndex = 0;

  List<Widget> widgets = [ShowMarker(), ShowDirections()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Map Launcher Flutter'),
        ),
        body: widgets[selectedTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (newTabIndex) => setState(() {
            selectedTabIndex = newTabIndex;
          }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.pin_drop),
              label: 'Marker',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions),
              label: 'Directions',
            ),
          ],
        ),
      ),
    );
  }
}