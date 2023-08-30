import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0.0;

  void setValue(double newValue) => setState(() {
        value = (newValue * 10.0).roundToDouble() / 10.0;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(flex: 8),
                Expanded(
                  child: IconButton(
                    onPressed: () => setValue(0),
                    icon: const Icon(Icons.refresh),
                    key: const Key('Refresh'),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                W1(value: value, setValue: setValue),
                W2(value: value),
                W3(value: value, setValue: setValue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
