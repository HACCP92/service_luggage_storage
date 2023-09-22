import 'package:flutter/material.dart';

import '../home/home_first_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeFirstScreen(),
    );
  }
}
