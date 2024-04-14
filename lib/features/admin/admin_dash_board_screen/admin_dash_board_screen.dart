import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminDashBoardScreen extends StatefulWidget {
  const AdminDashBoardScreen({super.key});

  @override
  State<AdminDashBoardScreen> createState() => _AdminDashBoardScreenState();
}

class _AdminDashBoardScreenState extends State<AdminDashBoardScreen> {
  List<Map<String, dynamic>> dashBoardItems = [
    {
      "title": StringsManger.createEmail,
      "icon": Icons.email,
      "color": Colors.white54
    },
    {
      "title": StringsManger.createUnit,
      "icon": Icons.business,
      "color": Colors.white54
    },
    {
      "title": StringsManger.investores,
      "icon": Icons.man,
      "color": Colors.white54
    },
    {
      "title": StringsManger.updates,
      "icon": Icons.update,
      "color": Colors.purple.withOpacity(0.4)
    },
    {
      "title": StringsManger.sentNotification,
      "icon": Icons.notification_add,
      "color": Colors.purple.withOpacity(0.4)
    },
    {
      "title": StringsManger.oprovedInformation,
      "icon": Icons.app_registration,
      "color": Colors.purple.withOpacity(0.4)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              StringsManger.dashboard,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
            )),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.sp,
              mainAxisSpacing: 15.sp),
          shrinkWrap: true,
          itemCount: dashBoardItems.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.of(context).pushNamed(
                        ConstantsRouteString.createCustomerServicesEmailScreen);

                    break;
                  case 1:
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.createUnit);

                    break;
                  case 2:
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.investorsAdminScreen);

                    break;

                  case 3:
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.updatesFromAdmin);

                    break;
                  case 4:
                    Navigator.of(context).pushNamed(
                        ConstantsRouteString.sendNotificationFromAdmin);

                    break;
                  case 5:
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.verifyInformation);

                    break;

                  default:
                    print('Container $index tapped');
                }
              },
              child: Container(
                margin: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: dashBoardItems[index]["color"],
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 2)
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      dashBoardItems[index]["icon"],
                      size: 30.h,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      dashBoardItems[index]["title"],
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
