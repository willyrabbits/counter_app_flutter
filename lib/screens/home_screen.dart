import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 24, wordSpacing: -2);

    int counter = 0;

    return Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
          elevation: 0.0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 179, 234, 207),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Num of clicks',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      wordSpacing: -2)),
              Text('$counter', style: fontSize30),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
            print('onPressed: $counter');
          },
        ));
  }
}
