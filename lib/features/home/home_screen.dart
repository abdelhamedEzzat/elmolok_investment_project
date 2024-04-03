// ignore: file_names
import 'package:elmolak_investment_app/core/constans/colors/color_manger.dart';
import 'package:elmolak_investment_app/core/constans/strings/strings_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        backgroundColor: Colors.grey.withOpacity(0.1),
        // ColorManger.backgroundColor,
        appBar: const CustomAppBar(
          title: Center(
            child: Text(
              "${StringsManger.hello} ${StringsManger.nameOfUser}",
            ),
          ),
        ),
        drawer: const Drawer(),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      height: 40.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.sort,
                            size: 16.sp,
                          ),
                          Text(
                            StringsManger.sortBy,
                            style: TextStyle(fontSize: 12.sp),
                          )
                        ],
                      ),
                    ),
                    TabBar(
                      indicator: const CustomTabIndicator(
                          color: ColorManger.buttonColor),
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            StringsManger.live,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            StringsManger.exited,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            StringsManger.funded,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Content for the first tab
                          Container(
                            height: 100.h,
                            width: 100.w,
                            color: Colors.red,
                            child: const Text('Content for live tab'),
                          ),
                          // Content for the second tab
                          const Center(
                            child: Text('Content for Exited tab'),
                          ),
                          // Content for the third tab
                          const Center(
                            child: Text('Content for Funded tab'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: GNav(
          backgroundColor: Colors.white,
          gap: 5,
          padding: const EdgeInsets.all(16),
          color: ColorManger.buttonColor.withOpacity(0.5),
          activeColor: Colors.white,
          tabBackgroundColor: ColorManger.buttonColor,
          tabs: const [
            GButton(icon: Icons.home, text: StringsManger.mainScreen),
            GButton(icon: Icons.dashboard, text: StringsManger.dashboard),
            GButton(icon: Icons.person_pin, text: StringsManger.profile),
            GButton(icon: Icons.chat, text: StringsManger.customerServies),
          ],
        ),
      ),
    );
  }
}

class CustomTabIndicator extends Decoration {
  final double radius;

  final Color color;

  final double indicatorHeight;

  const CustomTabIndicator({
    this.radius = 8,
    this.indicatorHeight = 4,
    this.color = Colors.red,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(
      this,
      onChanged,
      radius,
      color,
      indicatorHeight,
    );
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;
  final double radius;
  final Color color;
  final double indicatorHeight;

  _CustomPainter(
    this.decoration,
    VoidCallback? onChanged,
    this.radius,
    this.color,
    this.indicatorHeight,
  ) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    final Paint paint = Paint();
    double xAxisPos = offset.dx + configuration.size!.width / 2;
    double yAxisPos =
        offset.dy + configuration.size!.height - indicatorHeight / 2;
    paint.color = color;

    RRect fullRect = RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(xAxisPos, yAxisPos),
        width: configuration.size!.width / 1,
        height: indicatorHeight,
      ),
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
    );

    canvas.drawRRect(fullRect, paint);
  }
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title, this.leading, this.onPressed});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  final Widget? title;
  final Widget? leading;
  final void Function()? onPressed;
  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.h,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      surfaceTintColor: ColorManger.buttonColor,

      title: widget.title,
      titleTextStyle: TextStyle(fontSize: 14.sp),
      leading: widget.leading,
      iconTheme: IconThemeData(size: 18.h, color: Colors.white),
      elevation: 0,
      backgroundColor:
          ColorManger.buttonColor, // Set the desired background color

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: widget.onPressed,
          ),
        ),
      ],
    );
  }
}




// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<String> _items = List.generate(20, (index) => 'Item ${index + 1}');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: const CustomBottomNavigationBar(),
//         backgroundColor: Colors.grey.withOpacity(0.1),
//         appBar: const CustomAppBar(
//           title: Center(
//             child: Text(
//               "${StringsManger.hello} ${StringsManger.nameOfUser}",
//             ),
//           ),
//         ),
//         drawer: const Drawer(),
//         body: AnimatedList(
//           initialItemCount: _items.length,
//           itemBuilder: (context, index, animation) {
//             return AnimationConfiguration.staggeredList(
//               position: index,
//               duration: const Duration(milliseconds: 600),
//               child: SlideAnimation(
//                 verticalOffset: 50.0,
//                 child: FadeInAnimation(
//                   child: _buildItem(_items[index]),
//                 ),
//               ),
//             );
//           },
//         ));
//   }

//   Widget _buildItem(String item) {
//     return Container(
//       color: Colors.white,
//       margin: const EdgeInsets.all(8.0),
//       child: ListTile(
//         title: Text(item),
//       ),
//     );
//   }
// }
