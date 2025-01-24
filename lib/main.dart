import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_provider/Configs/Themes.dart';
import 'package:learn_provider/HomePage.dart';
import 'package:learn_provider/Provider/CounterProvider.dart';
import 'package:learn_provider/Provider/SliderProvider.dart';
import 'package:learn_provider/Provider/ThemeProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => Sliderprovider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    return GetMaterialApp(
      title: 'Learn Provider',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      home: HomePage(),
    );
  }
}
