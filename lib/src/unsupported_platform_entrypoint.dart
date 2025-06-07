import 'package:flutter/material.dart';

class NukiveUnsupported extends StatelessWidget {
  const NukiveUnsupported({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nukive Edge Unsupported',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Unsupported Platform'),
        ),
        body: const Center(
          child: Text(
            'This platform is not supported by Nukive Edge yet!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
