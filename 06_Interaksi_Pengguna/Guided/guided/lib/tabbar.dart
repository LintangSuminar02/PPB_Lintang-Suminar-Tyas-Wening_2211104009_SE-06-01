import 'package:flutter/material.dart';

class MyTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Jumlah tab
        child: Scaffold(
          appBar: AppBar(
            title: Text('Contoh TabBar'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Tab 1'),
                Tab(icon: Icon(Icons.history), text: 'Tab 2'),
                Tab(icon: Icon(Icons.cabin), text: 'Tab 3'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Konten Tab 1')),
              Center(child: Text('Konten Tab 2')),
              Center(child: Text('Konten Tab 3')),
            ],
          ),
        ),
      ),
    );
  }
}
