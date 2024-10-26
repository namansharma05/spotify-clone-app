import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Hello World!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
