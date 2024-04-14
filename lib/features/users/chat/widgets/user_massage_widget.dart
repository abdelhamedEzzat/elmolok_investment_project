import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:flutter/material.dart';

class UserMessageWidget extends StatelessWidget {
  final bool isSentByUser;
  final String message;

  const UserMessageWidget({
    required this.isSentByUser,
    required this.message,
    super.key,
  });

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
