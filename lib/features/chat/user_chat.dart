import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:flutter/material.dart';

class UserChat extends StatelessWidget {
  const UserChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            StringsManger.customerChat,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                UserMessageWidget(
                  isSentByUser: true,
                  message: 'Hello, how can I help you?',
                ),
                UserMessageWidget(
                  isSentByUser: false,
                  message: 'Hi there! I need assistance with my order.',
                ),
                // Add more messages here
              ],
            ),
          ),
          const UserMessageInputField(),
        ],
      ),
    );
  }
}

class UserMessageWidget extends StatelessWidget {
  final bool isSentByUser;
  final String message;

  const UserMessageWidget({
    required this.isSentByUser,
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isSentByUser ? Alignment.centerRight : Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: isSentByUser
              ? ColorManger.buttonColor.withOpacity(0.8)
              : Colors.grey[200],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          message,
          style: TextStyle(color: isSentByUser ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class UserMessageInputField extends StatelessWidget {
  const UserMessageInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, -2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.send,
              color: ColorManger.buttonColor,
            ),
            onPressed: () {
              // Send message action
            },
          ),
        ],
      ),
    );
  }
}
