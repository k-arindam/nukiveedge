import 'package:flutter/material.dart';

class NukiveEdgePro extends StatefulWidget {
  const NukiveEdgePro({super.key});

  @override
  State<NukiveEdgePro> createState() => _NukiveEdgeProState();
}

class _NukiveEdgeProState extends State<NukiveEdgePro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nukive Edge Pro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nukive Edge Pro'),
        ),
        body: const Center(
          child: Text(
            'Welcome to Nukive Edge Pro!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
