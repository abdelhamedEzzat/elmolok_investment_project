import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class ChatCustomerServices extends StatelessWidget {
  const ChatCustomerServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(StringsManger.customerChat,
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
            ),
            margin: EdgeInsets.only(
              bottom: 60.h,
            ),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChatWidget(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.allCustomerChatsScreen);
                  },
                  containerColor: ColorManger.buttonColor.withOpacity(0.3),
                  icon: Icons.chat_bubble,
                  text: StringsManger.customerChats,
                ),
                SizedBox(
                  height: 25.h,
                ),
                ChatWidget(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.adminChatScreen);
                  },
                  containerColor: ColorManger.buttonColor.withOpacity(0.8),
                  icon: Icons.chat_rounded,
                  text: StringsManger.adminChats,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AllCustomerChatsScreen extends StatelessWidget {
  const AllCustomerChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            StringsManger.customerChats,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = dummyData[index];
          return ListTile(
            title: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chat.name,
                      ),
                      Text(
                        chat.message,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(chat.avatar),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ConstantsRouteString.customerChatBody);
              // Handle tap on chat item
            },
          );
        },
      ),
    );
  }
}

class Chat {
  final String avatar;
  final String name;
  final String message;

  Chat({
    required this.avatar,
    required this.name,
    required this.message,
  });
}

final List<Chat> dummyData = [
  Chat(
    avatar: 'assets/images12.jpg',
    name: 'احمد مكرم',
    message: 'كيف الاخبار ان شاء الله طيب',
  ),
  Chat(
    avatar: 'assets/images12.jpg',
    name: ' انس السباعي ',
    message: 'هل يمكنني الاستفسار عن امر ما ',
  ),
  // Add more dummy data here
];

class AdminChatScreen extends StatelessWidget {
  const AdminChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            StringsManger.customerChat,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ChatBody(),
    );
  }
}

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              MessageWidget(
                isSentByUser: true,
                message: 'Hello, how can I help you?',
              ),
              MessageWidget(
                isSentByUser: false,
                message: 'Hi there! I need assistance with my order.',
              ),
              // Add more messages here
            ],
          ),
        ),
        MessageInputField(),
      ],
    );
  }
}

class MessageWidget extends StatelessWidget {
  final bool isSentByUser;
  final String message;

  const MessageWidget({
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

class MessageInputField extends StatelessWidget {
  const MessageInputField({Key? key}) : super(key: key);

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
          Expanded(
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

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.containerColor,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final Color containerColor;
  final String text;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: containerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.h),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Icon(
                    color: Colors.white,
                    icon,
                    size: 50.w,
                  )),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  )),
              SizedBox(height: 25.h),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerChatBody extends StatelessWidget {
  const CustomerChatBody({Key? key}) : super(key: key);

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
              children: [
                MessageWidget(
                  isSentByUser: true,
                  message: 'Hello, how can I help you?',
                ),
                MessageWidget(
                  isSentByUser: false,
                  message: 'Hi there! I need assistance with my order.',
                ),
                // Add more messages here
              ],
            ),
          ),
          MessageInputField(),
        ],
      ),
    );
  }
}

class CustomerMessageWidget extends StatelessWidget {
  final bool isSentByUser;
  final String message;

  const CustomerMessageWidget({
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

class CustomerMessageInputField extends StatelessWidget {
  const CustomerMessageInputField({Key? key}) : super(key: key);

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
          Expanded(
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
