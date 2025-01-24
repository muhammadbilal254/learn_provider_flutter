import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_provider/Examples/Counter/CounterPage.dart';
import 'package:learn_provider/Examples/SliderExample/SliderPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Provider Examples",
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(CounterPage());
                },
                leading: Text(
                  "#",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                  "Counter",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {
                  Get.to(SliderPage());
                },
                leading: Text(
                  "#",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                  "Slider",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
