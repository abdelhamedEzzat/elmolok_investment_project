import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppUsers extends StatelessWidget {
  const AppUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyDataUser.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = dummyDataUser[index];
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
                      chat.email,
                      style: const TextStyle(color: Colors.grey),
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
            // Handle tap on chat item
          },
        );
      },
    );
  }
}

class ChatUsers {
  final String avatar;
  final String name;
  final String email;

  ChatUsers({
    required this.avatar,
    required this.name,
    required this.email,
  });
}

final List<ChatUsers> dummyDataUser = [
  ChatUsers(
    avatar: 'assets/istockphoto-160641325-612x612.jpg',
    name: 'احمد مكرم',
    email: "ahmedmokram120@gmail.com",
  ),
  ChatUsers(
    avatar: 'assets/images12.jpg',
    name: ' انس السباعي ',
    email: "anas72512@gmail.com",
  ),
  // Add more dummy data here
];
