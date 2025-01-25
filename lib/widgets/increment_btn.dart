import 'package:counter_provider_app/main.dart';
import 'package:counter_provider_app/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncrementBtn extends StatelessWidget {
  const IncrementBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          Provider.of<CounterProvider>(context, listen: false).increment(),
      child: const Text('Increment'),
    );
  }
}
