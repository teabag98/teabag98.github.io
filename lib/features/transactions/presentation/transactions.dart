import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/core/presentation/widgets/buttons/app_button.dart';
import 'package:fl_discover_dashboard/core/presentation/widgets/flickering.dart';
import 'package:fl_discover_dashboard/features/authentication/presentation/signup.dart';
import 'package:fl_discover_dashboard/features/categories/presentation/categories.dart';
import 'package:fl_discover_dashboard/features/products/presentation/products_view.dart';
import 'package:fl_discover_dashboard/features/transactions/presentation/merchandise_orders.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionsDashboard extends StatefulWidget {
  const TransactionsDashboard({super.key});

  @override
  State<TransactionsDashboard> createState() => _TransactionsDashboardState();
}

class _TransactionsDashboardState extends State<TransactionsDashboard> {
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
                  "Orders",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.alata(fontSize: 30, color: Colors.black),
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
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: const Icon(
                                          Icons.card_giftcard,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      AutoSizeText(
                                        "Merchandise",
                                        style:
                                            GoogleFonts.poppins(fontSize: 22),
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
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: _sc.screenWidth * 0.17,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: AppColors.red,
                                          child: Text(
                                            "4",
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                        ),
                                        AutoSizeText(
                                          "Pending",
                                          style:
                                              GoogleFonts.andika(fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: _sc.screenWidth * 0.17,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: AppColors.green,
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                        ),
                                        AutoSizeText(
                                          "actioned",
                                          style:
                                              GoogleFonts.andika(fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 5,
                            right: 5,
                            child: AppButton(
                                color: AppColors.primaryColor,
                                width: _sc.screenWidth * 0.12,
                                fontColor: Colors.white,
                                icon: const Icon(Icons.add),
                                label: 'view',
                                onTap: () {
                                  goTo(const MerchandiseOrders());
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 37, 25, 20),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: const Icon(
                                          Icons.hotel,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      AutoSizeText(
                                        "Hotels",
                                        style:
                                            GoogleFonts.poppins(fontSize: 22),
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
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: _sc.screenWidth * 0.17,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: AppColors.red,
                                          child: Text(
                                            "4",
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                        ),
                                        AutoSizeText(
                                          "Pending",
                                          style:
                                              GoogleFonts.andika(fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: _sc.screenWidth * 0.17,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: AppColors.green,
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                        ),
                                        AutoSizeText(
                                          "actioned",
                                          style:
                                              GoogleFonts.andika(fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 5,
                            right: 5,
                            child: AppButton(
                                color: AppColors.primaryColor,
                                width: _sc.screenWidth * 0.12,
                                fontColor: Colors.white,
                                icon: const Icon(Icons.add),
                                label: 'view',
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                            color: AppColors.red,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: const Icon(
                                          Icons.event,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      AutoSizeText(
                                        "Events",
                                        style:
                                            GoogleFonts.poppins(fontSize: 22),
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
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: _sc.screenWidth * 0.17,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: AppColors.red,
                                          child: Text(
                                            "4",
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                        ),
                                        AutoSizeText(
                                          "Pending",
                                          style:
                                              GoogleFonts.andika(fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: _sc.screenWidth * 0.17,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: AppColors.green,
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                        ),
                                        AutoSizeText(
                                          "actioned",
                                          style:
                                              GoogleFonts.andika(fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 5,
                            right: 5,
                            child: AppButton(
                                color: AppColors.primaryColor,
                                width: _sc.screenWidth * 0.12,
                                fontColor: Colors.white,
                                icon: const Icon(Icons.add),
                                label: 'view',
                                onTap: () {
                                  goTo(const Categories());
                                }))
                      ]),
                    ),
                  ),
                ],
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
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 53, 19, 6),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: const Icon(
                                          Icons.explore,
                                          color: AppColors.white,
                                        ),
                                      ),
                                      AutoSizeText(
                                        "Experiences",
                                        style:
                                            GoogleFonts.poppins(fontSize: 22),
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
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: _sc.screenWidth * 0.17,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: AppColors.red,
                                          child: Text(
                                            "4",
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                        ),
                                        AutoSizeText(
                                          "Pending",
                                          style:
                                              GoogleFonts.andika(fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: _sc.screenWidth * 0.17,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const CircleAvatar(
                                          radius: 10,
                                          backgroundColor: AppColors.green,
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: AppColors.white),
                                          ),
                                        ),
                                        AutoSizeText(
                                          "actioned",
                                          style:
                                              GoogleFonts.andika(fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 5,
                            right: 5,
                            child: AppButton(
                                color: AppColors.primaryColor,
                                width: _sc.screenWidth * 0.12,
                                fontColor: Colors.white,
                                icon: const Icon(Icons.add),
                                label: 'view',
                                onTap: () {
                                  goTo(const Categories());
                                }))
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
