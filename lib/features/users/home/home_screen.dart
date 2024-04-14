import 'package:elmolak_investment_app/features/users/chat/user_chat.dart';
import 'package:elmolak_investment_app/features/users/dash_board/dashboard_screen.dart';
import 'package:elmolak_investment_app/features/users/home/home_screen_body.dart';
import 'package:elmolak_investment_app/features/users/home/widget/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:elmolak_investment_app/features/users/personal_Profile/personal_profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreenBody(),
    const DashBoardScreen(),
    const PersonalProfileScreen(),
    const UserChat(),
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          backgroundColor: Colors.white,
          // ColorManger.backgroundColor,

          // drawer: const Drawer(),
          body: _screens[currentIndex],
        ));
  }
}
