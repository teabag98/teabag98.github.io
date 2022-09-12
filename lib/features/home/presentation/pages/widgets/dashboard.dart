import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/core/presentation/widgets/buttons/app_button.dart';
import 'package:fl_discover_dashboard/core/presentation/widgets/flickering.dart';
import 'package:fl_discover_dashboard/features/categories/presentation/categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  goTo(Widget wigd) {
    return Navigator.push(context, MaterialPageRoute(builder: (cxt) => wigd));
  }

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);
    return Expanded(
        flex: 5,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: _sc.heightScaledSize(40),
              ),
              SizedBox(
                width: _sc.screenWidth * 0.7,
                child: AutoSizeText(
                  "Qinsley LTD",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.alata(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(
                height: _sc.heightScaledSize(40),
              ),
              SizedBox(
                width: _sc.screenWidth * 0.7,
                child: AutoSizeText(
                  "Good Morning eric ,",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.alata(fontSize: 25, color: Colors.black),
                ),
              ),
              SizedBox(
                height: _sc.heightScaledSize(40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 10,
                    child: Container(
                      color: Colors.white.withOpacity(0.3),
                      width: _sc.screenWidth * 0.2,
                      height: _sc.screenHeight * 0.4,
                      child: Stack(children: [
                        Positioned(
                            top: 4,
                            left: 4,
                            child: SizedBox(
                              width: _sc.screenWidth * 0.18,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const CircleAvatar(
                                        backgroundColor: AppColors.primaryColor,
                                        child: Icon(Icons.ads_click),
                                      ),
                                      AutoSizeText("Create Product",
                                          style:
                                              GoogleFonts.poppins(fontSize: 25))
                                    ],
                                  ),
                                  const Divider()
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 70,
                            width: _sc.screenWidth * 0.18,
                            left: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: _sc.screenWidth * 0.17,
                                  child: AutoSizeText(
                                    "1 out of 5 categories added",
                                    style: GoogleFonts.andika(fontSize: 17),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(7.0),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: LinearProgressIndicator(
                                    value: 0.3,
                                    color: AppColors.primaryColor,
                                    minHeight: 8,
                                    backgroundColor:
                                        AppColors.greyLight.withOpacity(0.3),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 5,
                            right: 5,
                            child: AppButton(
                                color: AppColors.primaryColor,
                                width: _sc.screenWidth * 0.12,
                                fontColor: Colors.white,
                                icon: const Icon(Icons.add),
                                label: 'Add Category',
                                onTap: () {
                                  goTo(const Categories());
                                }))
                      ]),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Container(
                      color: Colors.white.withOpacity(0.3),
                      width: _sc.screenWidth * 0.2,
                      height: _sc.screenHeight * 0.4,
                      child: Stack(children: [
                        Positioned(
                            top: 4,
                            left: 4,
                            child: SizedBox(
                              width: _sc.screenWidth * 0.18,
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          child: Icon(Icons.card_giftcard),
                                        ),
                                        AutoSizeText(
                                          "My Products/services",
                                          style:
                                              GoogleFonts.poppins(fontSize: 25),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider()
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 70,
                            width: _sc.screenWidth * 0.18,
                            left: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: _sc.screenWidth * 0.17,
                                  child: AutoSizeText(
                                    "View all products or services that you  offer  in your portal, edit or clone your products",
                                    style: GoogleFonts.andika(fontSize: 17),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 5,
                            right: 5,
                            child: AppButton(
                                color: AppColors.primaryColor,
                                width: _sc.screenWidth * 0.12,
                                fontColor: Colors.white,
                                icon: const Icon(Icons.add),
                                label: 'View',
                                onTap: () {}))
                      ]),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Container(
                      color: Colors.white.withOpacity(0.3),
                      width: _sc.screenWidth * 0.2,
                      height: _sc.screenHeight * 0.4,
                      child: Stack(children: [
                        Positioned(
                            top: 4,
                            left: 4,
                            child: SizedBox(
                              width: _sc.screenWidth * 0.18,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const CircleAvatar(
                                        backgroundColor: AppColors.primaryColor,
                                        child: Icon(Icons.person),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      AutoSizeText(
                                        "Profile",
                                        style:
                                            GoogleFonts.poppins(fontSize: 25),
                                      )
                                    ],
                                  ),
                                  const Divider()
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 70,
                            width: _sc.screenWidth * 0.18,
                            left: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: _sc.screenWidth * 0.17,
                                  child: AutoSizeText(
                                    "Profile Completion",
                                    style: GoogleFonts.andika(fontSize: 17),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(7.0),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: LinearProgressIndicator(
                                    value: 0.3,
                                    color: AppColors.primaryColor,
                                    minHeight: 8,
                                    backgroundColor:
                                        AppColors.greyLight.withOpacity(0.3),
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            bottom: 5,
                            right: 5,
                            child: AppButton(
                                color: AppColors.primaryColor,
                                width: _sc.screenWidth * 0.12,
                                fontColor: Colors.white,
                                icon: const Icon(Icons.add),
                                label: 'Edit Profile',
                                onTap: () {})),
                        const Positioned(
                            top: 0, right: 0, child: CustomFlicker())
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _sc.heightScaledSize(40),
              ),
            ],
          ),
        ));
  }
}
