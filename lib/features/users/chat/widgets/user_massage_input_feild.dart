import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';

class UserMessageInputField extends StatelessWidget {
  const UserMessageInputField({super.key});

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
