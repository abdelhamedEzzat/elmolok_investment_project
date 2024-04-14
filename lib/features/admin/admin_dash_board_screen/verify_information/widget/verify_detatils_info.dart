import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyDetailsInfo extends StatelessWidget {
  const VerifyDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(title: Text(StringsManger.updates)),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(1),
                      padding: const EdgeInsets.all(15.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.w)),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                                color: ColorManger.buttonColor.withOpacity(0.3))
                          ]),
                      child: Text(
                        StringsManger.personalProfileInformation,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.w),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      margin: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4.0,
                                offset: const Offset(0, 2),
                                color: ColorManger.buttonColor.withOpacity(0.3))
                          ]),
                      height: 200.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringsManger.passportPic,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.w),
                          ),
                          SizedBox(width: 10.w),
                          Icon(
                            Icons.picture_in_picture,
                            size: 30.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      margin: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3.0,
                                offset: const Offset(0, 2),
                                color: ColorManger.buttonColor.withOpacity(0.4))
                          ]),
                      height: 200.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringsManger.personalPic,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.w),
                          ),
                          SizedBox(width: 10.w),
                          Icon(
                            Icons.personal_injury,
                            size: 30.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Expanded(
                          child: BottonClick(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0.w)),
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 2,
                              onTap: () {},
                              text: StringsManger.accepted),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: BottonClick(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0.w)),
                              colorBotton: Colors.red,
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 2,
                              onTap: () {},
                              text: StringsManger.refused),
                        ),
                        SizedBox(height: 15.h),
                      ],
                    ),
                    SizedBox(height: 10.h)
                  ],
                ),
              ),
            ),

            //
            //
            //
          ],
        ),
      ),
    );
  }
}
