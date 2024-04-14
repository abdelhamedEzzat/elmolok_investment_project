import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomerServisesUsers extends StatelessWidget {
  const AppCustomerServisesUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyDataForCustomerServices.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = dummyDataForCustomerServices[index];

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

class InfoForCustomerServices {
  final String avatar;
  final String name;
  final String email;

  InfoForCustomerServices({
    required this.avatar,
    required this.name,
    required this.email,
  });
}

final List<ChatCustomer> dummyDataForCustomerServices = [
  ChatCustomer(
    avatar: 'assets/istockphoto-160641325-612x612.jpg',
    name: 'علي عباس',
    email: "ali58588@gmail.com",
  ),
  ChatCustomer(
    avatar: 'assets/images12.jpg',
    name: ' ابراهيم محمد ',
    email: "ibrahim5484@gmail.com",
  ),
  // Add more dummy data here
];

class ChatCustomer {
  final String avatar;
  final String name;
  final String email;

  ChatCustomer({required this.avatar, required this.name, required this.email});
}
