import 'package:flutter/material.dart';
import 'package:smooth_animations/animations/animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations Demo',
      home: getAnimation(AnimationType.implicit),
    );
  }
}
