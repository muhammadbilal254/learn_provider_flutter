import 'package:flutter/material.dart';
import 'package:learn_provider/Provider/ThemeProvider.dart';
import 'package:provider/provider.dart';

class ChangeThemePage extends StatelessWidget {
  const ChangeThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Consumer<ThemeProvider>(
              builder: (context, value, child) => IconButton(
                onPressed: () {
                  themeProvider.onChangeTheme(
                      themeProvider.themeMode == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light);
                },
                icon: Icon(
                  themeProvider.themeMode == ThemeMode.light
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                  size: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
