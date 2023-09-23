import 'package:flutter/material.dart';
import 'presentation/home/home_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeFirstScreen(),
    );
  }
}

class HomeFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeState(), // HomeState 위젯으로 바꿉니다.
    );
  }
}
