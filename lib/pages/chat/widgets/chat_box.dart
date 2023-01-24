import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key});

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  final _user2 = const types.User(id: '82091008-a484-4a89-ae75-a22bf6d6f3ac');

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  @override
  Widget build(BuildContext context) => Chat(
        messages: _messages,
        // // onAttachmentPressed: _handleAttachmentPressed,
        // onMessageTap: _handleMessageTap,
        // onPreviewDataFetched: _handlePreviewDataFetched,
        onSendPressed: _send,
        showUserAvatars: true,
        showUserNames: true,
        user: _user,
      );

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _loadMessages() {
    _messages.add(types.TextMessage(
        text: "feel free to ask", author: _user2, id: '1551222'));
    _messages.add(types.TextMessage(
        text: "hello, I have a question", author: _user, id: '1551212'));
  }

  void _send(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: Random().nextInt(800).toString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }
}
