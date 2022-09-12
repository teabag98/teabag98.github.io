import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/core/presentation/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
            ),
          ),
          centerTitle: true,
          title: AutoSizeText(
            "Choose Category",
            style: GoogleFonts.andika(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: AppColors.black),
          ),
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
      body: Container(
        width: _sc.screenWidth,
        height: _sc.screenHeight,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              Container(
                                width: _sc.screenWidth * 0.8,
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: AppColors.greenDark,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: const Icon(
                                        Icons.hotel,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "Hotel/Restaurant",
                                      style: GoogleFonts.poppins(fontSize: 22),
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
                                "Make your hotel visible to thousands of clients",
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
                            label: 'Add to portal',
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
                              Container(
                                width: _sc.screenWidth * 0.8,
                                padding: const EdgeInsets.all(4),
                                child: Row(
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
                                      style: GoogleFonts.poppins(fontSize: 22),
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
                                "start selling merchandise in  your portal",
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
                            label: 'Add to portal',
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
                              Container(
                                width: _sc.screenWidth * 0.8,
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: const Icon(
                                        Icons.miscellaneous_services_outlined,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "Services",
                                      style: GoogleFonts.poppins(fontSize: 22),
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
                                "Provide other services",
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
                            label: 'Add to portal',
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
                              Container(
                                width: _sc.screenWidth * 0.8,
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 82, 5, 0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: const Icon(
                                        Icons.explore_rounded,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "Experiences",
                                      style: GoogleFonts.poppins(fontSize: 22),
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
                                "Curate an experience and sell it to on our platform",
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
                            label: 'Add to portal',
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
                              Container(
                                width: _sc.screenWidth * 0.8,
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 31, 28, 0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: const Icon(
                                        Icons.event,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "Events",
                                      style: GoogleFonts.poppins(fontSize: 23),
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
                                "Sell event tickets Lorem ipsum sijo ih jjih sf",
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
                            label: 'Add to portal',
                            onTap: () {}))
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
