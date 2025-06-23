import 'package:flutter/material.dart';
import 'package:nukiveedge/src/shared/views/ne_chat_view.dart';

class NEMHomeView extends StatefulWidget {
  const NEMHomeView({super.key});

  @override
  State<NEMHomeView> createState() => _NEMHomeViewState();
}

class _NEMHomeViewState extends State<NEMHomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NEChatView(),
    );
  }
}
