import 'package:flutter/material.dart';
import 'package:object_classifier/core/models/screen_params.dart';
import 'package:object_classifier/screens/live_detection_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenParams.screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
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
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LiveDetectionScreen()),
                ),
                child: Text('Live Detection'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
