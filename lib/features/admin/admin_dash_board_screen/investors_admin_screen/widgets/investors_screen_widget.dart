import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvestorsScreen extends StatelessWidget {
  const InvestorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData2.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = dummyData2[index];
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

class InvestorDetails {
  final String avatar;
  final String name;
  final String email;

  InvestorDetails({
    required this.avatar,
    required this.name,
    required this.email,
  });
}

final List<Chat> dummyData2 = [
  Chat(
    avatar: 'assets/istockphoto-160641325-612x612.jpg',
    name: 'احمد مكرم',
    email: "ahmedmokram120@gmail.com",
  ),
  Chat(
    avatar: 'assets/images12.jpg',
    name: ' انس السباعي ',
    email: "anas72512@gmail.com",
  ),
  // Add more dummy data here
];

class Chat {
  final String avatar;
  final String name;
  final String email;

  Chat({
    required this.avatar,
    required this.name,
    required this.email,
  });
}

final List<Chat> dummyData = [
  Chat(
    avatar: 'assets/istockphoto-160641325-612x612.jpg',
    name: 'احمد مكرم',
    email: "ahmedmokram120@gmail.com",
  ),
  Chat(
    avatar: 'assets/images12.jpg',
    name: ' انس السباعي ',
    email: "anas72512@gmail.com",
  ),
  // Add more dummy data here
];
