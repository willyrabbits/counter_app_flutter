import 'package:flutter/material.dart';

import 'package:counter_app/screens/counter_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterScreen());
    // return const MaterialApp(home: HomeScreen());
  }
}
