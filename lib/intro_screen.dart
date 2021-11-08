import 'package:flutter/material.dart';



class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introscreen'),
      ),
      body: const Center(
        child: Text('This is the IntroScreen'),
      ),
    );
  }
}