import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Object Detection App',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 10,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'This is a simple demo of using tflite in your '
                            'flutter app.The app uses the "',
                      ),
                      TextSpan(
                        text: 'COCO (Common Objects in Context)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '" quantized model by google which detects 80 '
                            'daily household objects.',
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Live Detection'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Photo Detection'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
