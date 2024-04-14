import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyInformation extends StatelessWidget {
  const VerifyInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text(StringsManger.updates)),
      body: ListView.builder(
        itemCount: dummyData4.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = dummyData4[index];
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
                  radius: 45,
                  backgroundImage: AssetImage(chat.picture),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ConstantsRouteString.verifyDetailsInfo);
            },
          );
        },
      ),
    );
  }
}

final List<PersonalInfo> dummyData4 = [
  PersonalInfo(
      picture: 'assets/istockphoto-160641325-612x612.jpg',
      name: ' ابراهيم العزيزي',
      email: "ibrahem@gmail.com"),
  PersonalInfo(
    picture: 'assets/images12.jpg',
    name: "محمود الجمل",
    email: "mahmoud@gmail.com",
  ),
  // Add more dummy data here
];

class PersonalInfo {
  final String picture;
  final String name;
  final String email;

  PersonalInfo({
    required this.picture,
    required this.name,
    required this.email,
  });
}
