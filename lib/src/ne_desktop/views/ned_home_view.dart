import 'package:flutter/material.dart';
import 'package:nukiveedge/src/shared/views/ne_chat_view.dart';

class NEDHomeView extends StatefulWidget {
  const NEDHomeView({super.key});

  @override
  State<NEDHomeView> createState() => _NEDHomeViewState();
}

class _NEDHomeViewState extends State<NEDHomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NEChatView(),
    );
  }
}
