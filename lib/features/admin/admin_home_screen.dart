import 'package:elmolak_investment_app/features/admin/admin_chat/admin_chat.dart';
import 'package:elmolak_investment_app/features/admin/admin_dash_board_screen/admin_dash_board_screen.dart';
import 'package:elmolak_investment_app/features/admin/users_admin_screen/users_admin_screen.dart';
import 'package:elmolak_investment_app/features/admin/widgets/admin_bottom_nav_bar.dart';
import 'package:elmolak_investment_app/features/users/home/home_screen_body.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<AdminHomeScreen>
    with TickerProviderStateMixin {
  int currentIndex = 0;
  final List<Widget> _screens = [
    const AdminDashBoardScreen(),
    const HomeScreenBody(),
    const AdminChats(),
    const UsersAdminScreen(),
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: AdminBottomNavigationBar(
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
