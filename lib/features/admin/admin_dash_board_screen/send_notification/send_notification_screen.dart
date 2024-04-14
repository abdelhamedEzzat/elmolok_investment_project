import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/send_notification/widgets/send_notification_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendNotificationFromAdmin extends StatelessWidget {
  const SendNotificationFromAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text(StringsManger.sentNotification)),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                ButtonNotification(
                    icons: Icons.man,
                    title: StringsManger.investores,
                    containerColor: Colors.grey.withOpacity(0.4)),
                SizedBox(
                  width: 10.w,
                ),
                ButtonNotification(
                    icons: Icons.people,
                    title: StringsManger.users,
                    containerColor: Colors.purple.withOpacity(0.9)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
