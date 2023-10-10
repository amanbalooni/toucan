import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toucan/pages/detail_page.dart';
import 'package:toucan/pages/navpages/main_page.dart';
import 'package:toucan/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailPage(),
    );
  }
}