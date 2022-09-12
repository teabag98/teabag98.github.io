import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/features/home/presentation/pages/widgets/langing_pages.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController controller;
  static PageController pageHorizontal = PageController();

  static List<SideMenuItem> items = [
    SideMenuItem(
      // Priority of item to show on SideMenu, lower value is displayed at the top
      priority: 0,
      title: 'Home',
      onTap: () => pageHorizontal.jumpToPage(0),
      icon: const Icon(Icons.home),
      badgeContent: const Text(
        '3',
        style: TextStyle(color: Colors.white),
      ),
    ),
    SideMenuItem(
      // Priority of item to show on SideMenu, lower value is displayed at the top
      priority: 1,
      title: 'Products',
      onTap: () => pageHorizontal.jumpToPage(1),
      icon: const Icon(Icons.ads_click),
    ),
    SideMenuItem(
      priority: 2,
      title: 'Transactions',
      onTap: () => pageHorizontal.jumpToPage(2),
      icon: const Icon(Icons.wallet),
    ),
    SideMenuItem(
      priority: 3,
      title: 'Notifications',
      onTap: () => pageHorizontal.jumpToPage(3),
      icon: const Icon(Icons.notifications),
      badgeContent: const Text(
        '3',
        style: TextStyle(color: Colors.white),
      ),
    ),
    SideMenuItem(
      priority: 4,
      title: 'Reports',
      onTap: () => pageHorizontal.jumpToPage(4),
      icon: const Icon(Icons.receipt_long_sharp),
    ),
    // SideMenuItem(
    //   priority: 6,
    //   title: 'Add product',
    //   onTap: () => pageHorizontal.jumpToPage(5),
    //   icon: const Icon(Icons.add_box_rounded),
    // ),
    SideMenuItem(
      priority: 6,
      title: 'Settings',
      onTap: () => pageHorizontal.jumpToPage(6),
      icon: const Icon(Icons.settings),
    ),
    SideMenuItem(
      priority: 7,
      title: 'Exit',
      onTap: () {},
      icon: const Icon(Icons.exit_to_app),
    ),
  ];

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey.withOpacity(0.05),
            actions: const [
              // Icon(Icons.notifications),
              Padding(
                padding: EdgeInsets.all(15),
                child: Icon(
                  Icons.message_sharp,
                  color: AppColors.primaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: Text("E.K"),
                ),
              )
            ]),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SideMenu(
              controller: pageHorizontal,
              // onDisplayModeChanged: (mode) {
              //   print(mode);
              // },
              style: SideMenuStyle(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                openSideMenuWidth: 260,
                displayMode: SideMenuDisplayMode.auto,
                hoverColor: AppColors.green,
                selectedColor: AppColors.primaryColor,
                selectedTitleTextStyle: const TextStyle(color: Colors.white),
                selectedIconColor: Colors.white,
              ),
              title: Column(
                children: [
                  DrawerHeader(child: Container()),
                ],
              ),

              items: items,
            ),
            const VerticalDivider(),
            LandingPage(
              pageController: pageHorizontal,
            )
          ],
        ),
      ),
    );
  }
}
