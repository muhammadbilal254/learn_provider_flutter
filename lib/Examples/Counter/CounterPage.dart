import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    print("---> UI Rebuild <---" + counter.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            counter.toString(),
            style: TextStyle(
              fontSize: 78,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  counter--;
                  setState(() {});
                },
                child: Text("Decrease"),
              ),
              ElevatedButton(
                onPressed: () {
                  counter++;
                  setState(() {});
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
