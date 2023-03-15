import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    super.key,
  });

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() => setState(() => counter++);
  void reset() => setState(() => counter = 0);
  void decrease() => setState(() => counter--);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 24, wordSpacing: -2);

    return Scaffold(
        appBar: AppBar(
          title: const Text('COUNTER'),
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
              const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: Text('Num of clicks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        wordSpacing: -2)),
              ),
              Text('$counter', style: fontSize30),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActions(
          increaseFn: increase,
          decreaseFn: decrease,
          resetFn: reset,
        ));
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function resetFn;
  final Function decreaseFn;

  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
    required this.resetFn,
    required this.decreaseFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.restart_alt_outlined),
        ),
        FloatingActionButton(
          onPressed: () => increaseFn(), //() => setState(() => counter++),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
