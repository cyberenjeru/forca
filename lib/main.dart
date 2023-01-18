import 'package:flutter/material.dart';
import 'package:forca/routes/splash_screen_route.dart';

void main() => runApp(const ForcaApp());

class ForcaApp extends StatelessWidget {
  const ForcaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forca da UTFPR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.green,
      ),
      home: const ForcaHomePage(),
    );
  }
}

class ForcaHomePage extends StatelessWidget {
  const ForcaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenRoute(),
    );
  }
}
