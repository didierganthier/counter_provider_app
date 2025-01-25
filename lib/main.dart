import 'package:counter_provider_app/provider/counter_provider.dart';
import 'package:counter_provider_app/widgets/counter_widget.dart';
import 'package:counter_provider_app/widgets/increment_btn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterWidget(),
              SizedBox(
                height: 20.0,
              ),
              IncrementBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
