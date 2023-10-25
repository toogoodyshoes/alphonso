import 'package:flutter/material.dart';

import 'package:alphonso/src/converter/presentation/home_screen.dart';

void main() {
  runApp(const Alphonso());
}

class Alphonso extends StatelessWidget {
  const Alphonso({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Alph',
      home: HomeScreen(),
    );
  }
}
