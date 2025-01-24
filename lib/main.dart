import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_provider/HomePage.dart';
import 'package:learn_provider/Provider/CounterProvider.dart';
import 'package:learn_provider/Provider/SliderProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => Sliderprovider()),
      ],
      child: GetMaterialApp(
        title: 'Learn Provider',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.deepPurple.shade100,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(
              fontSize: 24,
              letterSpacing: 2,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}
