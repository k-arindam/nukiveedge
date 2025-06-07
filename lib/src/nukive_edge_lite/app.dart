import 'package:flutter/material.dart';

class NukiveEdgeLite extends StatefulWidget {
  const NukiveEdgeLite({super.key});

  @override
  State<NukiveEdgeLite> createState() => _NukiveEdgeLiteState();
}

class _NukiveEdgeLiteState extends State<NukiveEdgeLite> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nukive Edge Lite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nukive Edge Lite'),
        ),
        body: const Center(
          child: Text(
            'Welcome to Nukive Edge Lite!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
