import 'package:flutter/material.dart';
import 'package:learn_provider/Provider/CounterProvider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    print("---> UI Rebuild <---");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(
            builder: (context, value, child) {
              print("Rebuid Widgets");
              return Text(
                value.counter.toString(),
                style: TextStyle(
                  fontSize: 78,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterProvider.decreaseConter();
                },
                child: Text("Decrease"),
              ),
              ElevatedButton(
                onPressed: () {
                  counterProvider.increaseConter();
                },
                child: Text("Increase"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
