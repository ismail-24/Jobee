import 'package:flutter/material.dart';
import 'package:jobee/models/message_model.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    required this.message,
    super.key,
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        margin: const EdgeInsets.only(right: 47, left: 16, top: 8, bottom: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          color: Color(0xff072AC8),
        ),
        child: Text(
          message.message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({
    required this.message,
    super.key,
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        margin: const EdgeInsets.only(right: 16, left: 47, top: 8, bottom: 8),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff072AC8)),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          color: Colors.white,
        ),
        child: Text(
          message.message,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
