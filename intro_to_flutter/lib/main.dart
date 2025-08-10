import 'package:flutter/material.dart';
import 'package:joke_gen/core/constants/theme.dart';
import 'package:joke_gen/screens/demo_screen.dart';
import 'package:joke_gen/screens/joke_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      // home: DemoStateless(title: 'Stateless',),
      home: DemoStateful(title: 'Stateful',),
      // home: JokeGeneratorScreen(),
    );
  }
}

