import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/features/customer_servises/chat_customer_services/chat_customer_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminChats extends StatelessWidget {
  const AdminChats({super.key});

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
                        .pushNamed(ConstantsRouteString.allCustomerChatsScreen);
                  },
                  containerColor: ColorManger.buttonColor.withOpacity(0.8),
                  icon: Icons.chat_rounded,
                  text: StringsManger.customerServicesChats,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
