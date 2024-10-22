import 'package:flutter/material.dart';
//import 'package:guided/FlexibleExpanded.dart';
//import 'package:guided/ListViewSeparated.dart';
//import 'package:guided/ListViewBuilder.dart';
//import 'package:guided/FlexibleExpanded.dart';
import 'package:guided/CustomScrollView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const FlexibleExpandedScreen(),
      //home: const ListViewSeparatedExample(),
      //home: const ListViewBuilderExample()
      //,//home: const FlexibleExpandedScreen(),
      home: const CustomScrollViewScreen(),
    );
  }
}
