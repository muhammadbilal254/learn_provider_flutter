import 'package:flutter/material.dart';

class ValueNotifierPage extends StatelessWidget {
  const ValueNotifierPage({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isFavourite = ValueNotifier(false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Value Notifier Example"),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: isFavourite,
          builder: (context, value, child) => IconButton(
            onPressed: () {
              isFavourite.value = !isFavourite.value;
            },
            icon: Icon(
              Icons.heart_broken,
              size: 80,
              color: isFavourite.value ? Colors.red : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
