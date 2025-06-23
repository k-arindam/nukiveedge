import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:nukiveedge/src/shared/core/ne_utils.dart';

class NEChatView extends StatefulWidget {
  const NEChatView({super.key});

  @override
  State<NEChatView> createState() => _NEChatViewState();
}

class _NEChatViewState extends State<NEChatView> {
  final _userID = NEUtils.generateUUID();
  final _chatController = InMemoryChatController();

  @override
  Widget build(BuildContext context) {
    return Chat(
      currentUserId: _userID,
      onMessageSend: (message) async {
        debugPrint("----->>> Message sent !!!");

        _chatController.insertMessage(
          TextMessage(
            id: NEUtils.generateUUID(),
            createdAt: DateTime.now(),
            authorId: _userID,
            text: message,
          ),
        );
      },
      resolveUser: (UserID id) async {
        return User(
          id: id,
          name: "Arindam Karmakar",
        );
      },
      chatController: _chatController,
    );
  }
}
