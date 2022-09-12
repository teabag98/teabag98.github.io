import 'package:fl_discover_dashboard/core/platform/app_image.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:flutter/material.dart';

class PageMargin extends StatefulWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool resizeToAvoidBottomInset;
  final bool showBottomNav;
  final bool showfloatingButton;
  final ValueChanged<int>? onNavItemTap;
  final Color? backgroundColor;
  final Widget? floatingButton;
  final int selectedIndex;
  final bool showAppBar;
  final PreferredSizeWidget? appBar;

  const PageMargin({
    Key? key,
    required this.child,
    this.resizeToAvoidBottomInset = true,
    this.showBottomNav = false,
    this.showfloatingButton = false,
    this.onNavItemTap,
    this.backgroundColor,
    this.floatingButton,
    this.selectedIndex = -1,
    this.showAppBar = false,
    this.appBar,
    this.padding,
  }) : super(key: key);

  @override
  _PageMarginState createState() => _PageMarginState();
}

class _PageMarginState extends State<PageMargin>
    with SingleTickerProviderStateMixin {
  // For carousel monitor

  // To animate the haow of floating action button
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _animation = Tween(begin: 1.0, end: 7.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  BottomNavigationBarItem _tabIcon({
    required String label,
    required Widget icon,
  }) =>
      BottomNavigationBarItem(
        icon: icon,
        label: label,
      );

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    final _sc = SizeConfig(context: context);

    if (widget.showBottomNav && widget.selectedIndex == -1) {
      throw Exception("selectedIndex cannot be null when showing bottom nav");
    }
    if (widget.showBottomNav && widget.onNavItemTap == null) {
      throw Exception("onNavItemTap cannot be null when showing bottom nav");
    }

    return Scaffold(
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      backgroundColor: widget.backgroundColor ?? Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: widget.showfloatingButton
          ? InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  useSafeArea: true,
                  barrierDismissible: true,
                  builder: (_) => /*const FabWidget()*/ Container(),
                );
              },
              child: Container(
                height: _sc.heightScaledSize(80),
                width: _sc.heightScaledSize(80),
                padding: EdgeInsets.all(_sc.heightScaledSize(12)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryColor,
                      blurRadius: _animation.value as double,
                      spreadRadius: _animation.value as double,
                    ),
                  ],
                ),
                child: Image.asset(
                  AppImages.spilled_beer_transparent,
                ),
              ),
            )
          : null,
      appBar: widget.appBar,
      bottomNavigationBar: widget.showBottomNav
          ? Container(
              decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppColors.primaryColor.withOpacity(0.6),
                    blurRadius: 7.7,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: BottomAppBar(
                elevation: 20,
                shape: const CircularNotchedRectangle(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                notchMargin: 3,
                color: Colors.black,
                child: BottomNavigationBar(
                  backgroundColor: Colors.black,
                  elevation: 20,
                  type: BottomNavigationBarType.fixed,
                  showUnselectedLabels: true,
                  unselectedItemColor: Colors.white,
                  selectedItemColor: AppColors.primaryColor,
                  currentIndex: widget.selectedIndex,
                  onTap: widget.onNavItemTap,
                  items: <BottomNavigationBarItem>[
                    _tabIcon(
                      icon: const Icon(
                        Icons.home,
                      ),
                      label: 'Home',
                    ),
                    _tabIcon(
                      icon: const Icon(
                        Icons.location_on_rounded,
                      ),
                      label: 'Map',
                    ),
                    _tabIcon(
                      icon: Container(),
                      label: '',
                    ),
                    _tabIcon(
                      icon: const Icon(
                        Icons.notifications_active,
                      ),
                      label: 'Notification',
                    ),
                    _tabIcon(
                      icon: const Icon(
                        Icons.account_circle,
                      ),
                      label: 'Account',
                    ),
                  ],
                ),
              ),
            )
          : null,
      body: SafeArea(
        child: Padding(
          padding: widget.padding ??
              EdgeInsets.only(
                left: _sc.heightScaledSize(20),
                right: _sc.heightScaledSize(20),
                top: _sc.heightScaledSize(20),
              ),
          child: widget.child,
        ),
      ),
    );
  }
}
