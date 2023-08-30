import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.value, required this.setValue});

  final double value;
  final Function(double) setValue;

  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(value.toString(), key: const Key('W3Value')),
        IconButton(
          onPressed: () => setValue(value + 1),
          icon: const Icon(Icons.add),
          key: const Key('W3Add'),
        ),
        IconButton(
          onPressed: () => setValue(value - 1),
          icon: const Icon(Icons.remove),
          key: const Key('W3Sub'),
        )
      ],
    );
  }
}
