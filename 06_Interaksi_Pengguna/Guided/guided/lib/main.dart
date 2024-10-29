import 'package:flutter/material.dart';
//import 'package:guided/bottom.dart';
import 'package:guided/package.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:guided/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),

      //home: MyBottomNavBar(),
      //home: MyTabbar(),
      home: FormExample(),
    );
  }
}
