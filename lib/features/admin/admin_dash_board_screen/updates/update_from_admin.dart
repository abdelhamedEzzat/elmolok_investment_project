import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatesFromAdmin extends StatelessWidget {
  const UpdatesFromAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text(StringsManger.updates)),
      body: ListView.builder(
        itemCount: dummyData3.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = dummyData3[index];
          return ListTile(
            title: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chat.nameOFUnit,
                      ),
                      Text(
                        chat.loctionOfUnit,
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
                  backgroundImage: AssetImage(chat.avatar),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ConstantsRouteString.updatesDetails);
            },
          );
        },
      ),
    );
  }
}

final List<Updates> dummyData3 = [
  Updates(
      avatar: 'assets/istockphoto-160641325-612x612.jpg',
      nameOFUnit: 'سرير دابل في فندق موفمبيق',
      loctionOfUnit: "دبي , الامارات"),
  Updates(
    avatar: 'assets/images12.jpg',
    nameOFUnit: 'غرفه دابل في فندق الماسه',
    loctionOfUnit: "دبي , الامارات",
  ),
  // Add more dummy data here
];

class Updates {
  final String avatar;
  final String nameOFUnit;
  final String loctionOfUnit;

  Updates({
    required this.avatar,
    required this.nameOFUnit,
    required this.loctionOfUnit,
  });
}
