import 'package:flutter/material.dart';
import 'package:flutter_app/main_page.dart';
import 'package:flutter_app/theme/app_theme_page.dart';
import 'package:flutter_app/theme/theme/appbars_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: MainPage(),
      home: AppThemePage(),
      // home: AppbarPage(),
    );
  }
}
