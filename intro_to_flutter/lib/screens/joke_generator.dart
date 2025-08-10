import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:joke_gen/core/constants/constants.dart';

class JokeGeneratorScreen extends StatefulWidget {
  const JokeGeneratorScreen({super.key});

  @override
  State<JokeGeneratorScreen> createState() => _JokeGeneratorScreenState();
}

class _JokeGeneratorScreenState extends State<JokeGeneratorScreen> {
  String joke = 'Generate Joke';
  bool loading = false;

  Future<void> fetchJoke() async {
    final response = await http.get(Uri.parse(jokeApi));
    setState(() {
      loading = true;
    });
    final respBody = jsonDecode(response.body);
    setState(() {
      loading = false;
      joke = '${respBody["setup"]}\n${respBody["punchline"]}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Joke Generator'),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            loading
                ? CircularProgressIndicator()
                : Text(
                    joke,
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () => fetchJoke(),
              child: Text('Generate Joke'),
            ),
          ],
        ),
      ),
    );
  }
}
