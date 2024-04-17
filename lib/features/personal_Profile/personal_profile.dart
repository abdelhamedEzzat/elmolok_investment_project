import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_drawer.dart';
import 'package:elmolak_investment_app/features/personal_Profile/personal_employment_screen/personal_employment_info.dart';
import 'package:elmolak_investment_app/features/personal_Profile/personal_info_screen/pesonal_profile_info.dart';
import 'package:elmolak_investment_app/features/personal_Profile/personal_loction_screen/peronal_loction_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalProfileScreen extends StatefulWidget {
  const PersonalProfileScreen({super.key});

  @override
  State<PersonalProfileScreen> createState() => _PersonalProfileScreenState();
}

class _PersonalProfileScreenState extends State<PersonalProfileScreen> {
  int currentPageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPageIndex);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(
        title: Text(StringsManger.personalprofile),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            Stack(
              alignment: Alignment.center,
              children: [
                const Divider(),
                _buildCircleAvatar(
                  icon: Icons.person,
                  index: 0,
                ),
                _buildCircleAvatar(
                  icon: Icons.location_on_rounded,
                  index: 1,
                ),
                _buildCircleAvatar(
                  icon: Icons.work,
                  index: 2,
                ),
              ],
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentPageIndex = value;
                  });
                },
                controller: pageController,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: personalProfileinfo(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: personalLocationinfo(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Personalemploymentinfo(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.h),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAvatar({required IconData icon, required int index}) {
    return Align(
      alignment: index == 0
          ? Alignment.centerLeft
          : index == 1
              ? Alignment.center
              : Alignment.centerRight,
      child: CircleAvatar(
        backgroundColor:
            currentPageIndex == index ? ColorManger.buttonColor : Colors.grey,
        child: InkWell(
          onTap: () {
            setState(() {
              currentPageIndex = index;
              pageController.animateToPage(index, // Scroll to the selected page
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            });
          },
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}





// ignore: camel_case_types











