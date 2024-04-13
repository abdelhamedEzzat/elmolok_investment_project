import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/routes_string.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:elmolak_investment_app/core/helpers/botton.dart';
import 'package:elmolak_investment_app/core/helpers/custom_app_bar.dart';
import 'package:elmolak_investment_app/core/helpers/custom_text_form_field.dart';
import 'package:elmolak_investment_app/features/admin/widgets/admin_bottom_nav_bar.dart';
import 'package:elmolak_investment_app/features/customer_servises/chat_customer_services/chat_customer_services.dart';
import 'package:elmolak_investment_app/features/home/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                        ConstantsRouteString.createCustomerServicesScreen);
                    // Handle onTap action for the first container

                    print('Container 0 tapped');
                    break;
                  case 1:
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.createUnit);

                    print('Container 1 tapped');
                    break;
                  case 2:
                    Navigator.of(context)
                        .pushNamed(ConstantsRouteString.investorsAdminScreen);
                    // Handle onTap action for the third container
                    print('Container 2 tapped');
                    break;
                  // Add cases for other containers as needed
                  default:
                    // Handle default case or other containers
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

class CreateCustomerServicesScreen extends StatelessWidget {
  const CreateCustomerServicesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                StringsManger.createCustomerEmail,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ))),
      body: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          CustomTextFormField(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.firstName,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.lastName,
          ),

          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.emailAddress,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            height: 52.h,
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            hintText: StringsManger.password,
          ),

          //
          //

          SizedBox(
            height: 10.h,
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              alignment: Alignment.bottomCenter,
              child: BottonClick(
                  borderRadius: BorderRadius.circular(10.sp),
                  text: StringsManger.submit,
                  alignment: Alignment.center,
                  onTap: () {},
                  width: MediaQuery.of(context).size.width),
            ),
          ),

          SizedBox(
            height: 10.h,
          ),
          //
          //
        ],
      ),
    );
  }
}

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

class InvestorsAdminScreen extends StatefulWidget {
  const InvestorsAdminScreen({super.key});

  @override
  State<InvestorsAdminScreen> createState() => _InvestorsAdminScreenState();
}

class _InvestorsAdminScreenState extends State<InvestorsAdminScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            StringsManger.investores,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: InvestorsScreen(),
    );
  }
}

class UsersAdminScreen extends StatefulWidget {
  const UsersAdminScreen({super.key});

  @override
  State<UsersAdminScreen> createState() => _UsersAdminScreenState();
}

class _UsersAdminScreenState extends State<UsersAdminScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            StringsManger.users,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: StringsManger.users),
                Tab(text: StringsManger.teamCustomerServies),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // Content for the 'Users' tab
                AppUsers(),

                // Content for the 'Customer Services' tab
                AppCustomerServisesUsers(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppUsers extends StatelessWidget {
  const AppUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = dummyData[index];
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
                radius: 20,
                backgroundImage: AssetImage(chat.avatar),
              ),
            ],
          ),
          onTap: () {
            // Handle tap on chat item
          },
        );
      },
    );
  }
}

class InvestorsScreen extends StatelessWidget {
  const InvestorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData2.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = dummyData2[index];
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
                radius: 20,
                backgroundImage: AssetImage(chat.avatar),
              ),
            ],
          ),
          onTap: () {
            // Handle tap on chat item
          },
        );
      },
    );
  }
}

class InvestorDetails {
  final String avatar;
  final String name;
  final String email;

  InvestorDetails({
    required this.avatar,
    required this.name,
    required this.email,
  });
}

final List<Chat> dummyData2 = [
  Chat(
    avatar: 'assets/istockphoto-160641325-612x612.jpg',
    name: 'احمد مكرم',
    email: "ahmedmokram120@gmail.com",
  ),
  Chat(
    avatar: 'assets/images12.jpg',
    name: ' انس السباعي ',
    email: "anas72512@gmail.com",
  ),
  // Add more dummy data here
];

class Chat {
  final String avatar;
  final String name;
  final String email;

  Chat({
    required this.avatar,
    required this.name,
    required this.email,
  });
}

final List<Chat> dummyData = [
  Chat(
    avatar: 'assets/istockphoto-160641325-612x612.jpg',
    name: 'احمد مكرم',
    email: "ahmedmokram120@gmail.com",
  ),
  Chat(
    avatar: 'assets/images12.jpg',
    name: ' انس السباعي ',
    email: "anas72512@gmail.com",
  ),
  // Add more dummy data here
];

///
/////
////
///
class AppCustomerServisesUsers extends StatelessWidget {
  const AppCustomerServisesUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyDataForCustomerServices.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = dummyDataForCustomerServices[index];
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
                radius: 20,
                backgroundImage: AssetImage(chat.avatar),
              ),
            ],
          ),
          onTap: () {
            // Handle tap on chat item
          },
        );
      },
    );
  }
}

class infoForCustomerServices {
  final String avatar;
  final String name;
  final String email;

  infoForCustomerServices({
    required this.avatar,
    required this.name,
    required this.email,
  });
}

final List<Chat> dummyDataForCustomerServices = [
  Chat(
    avatar: 'assets/istockphoto-160641325-612x612.jpg',
    name: 'علي عباس',
    email: "ali58588@gmail.com",
  ),
  Chat(
    avatar: 'assets/images12.jpg',
    name: ' ابراهيم محمد ',
    email: "ibrahim5484@gmail.com",
  ),
  // Add more dummy data here
];

class CreateUnit extends StatelessWidget {
  const CreateUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Center(child: Text(StringsManger.createUnit)),
      ),
    );
  }
}
