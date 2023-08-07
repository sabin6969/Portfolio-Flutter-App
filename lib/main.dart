import 'package:flutter/material.dart';
import 'package:portfolioapp/index_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sabin's Portfolio App",
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.purple),
    );
  }
}
