import 'package:elmolak_investment_app/features/customer_servises/chat_customer_services/chat_customer_services.dart';
import 'package:elmolak_investment_app/features/customer_servises/customer_protifolio/customer_protoflio_screen.dart';
import 'package:elmolak_investment_app/features/customer_servises/updates_screen/updates_screen.dart';
import 'package:elmolak_investment_app/features/customer_servises/widget/custom_customer_home_screen.dart';
import 'package:elmolak_investment_app/features/home/home_screen_body.dart';
import 'package:flutter/material.dart';

class CustomerServicesHomeScreen extends StatefulWidget {
  const CustomerServicesHomeScreen({super.key});

  @override
  State<CustomerServicesHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CustomerServicesHomeScreen>
    with TickerProviderStateMixin {
  int currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreenBody(),
    const UpdatesScreen(),
    const CustomerProtifolioScreen(),
    const ChatCustomerServices(),
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: CustomCustomerBottomNavigationBar(
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
