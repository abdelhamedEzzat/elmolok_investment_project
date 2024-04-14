import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/features/users/chat/widgets/user_massage_input_feild.dart';
import 'package:elmolak_investment_app/features/users/chat/widgets/user_massage_widget.dart';
import 'package:flutter/material.dart';

class UserChat extends StatelessWidget {
  const UserChat({super.key});

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
