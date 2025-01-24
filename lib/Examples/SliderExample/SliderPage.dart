import 'package:flutter/material.dart';
import 'package:learn_provider/Provider/SliderProvider.dart';
import 'package:provider/provider.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<Sliderprovider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Example"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Sliderprovider>(
              builder: (context, data, child) => Slider(
                min: 0,
                max: 100,
                value: data.slider,
                onChanged: (val) {
                  sliderProvider.onSliderChange(val);
                },
              ),
            ),
            Consumer<Sliderprovider>(
              builder: (context, data, child) => Text(
                "Slider Value: ${data.slider}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
