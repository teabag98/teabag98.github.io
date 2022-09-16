import 'package:fl_discover_dashboard/core/presentation/widgets/inputs/app_text_field_outlined.dart';
import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/core/presentation/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMerchandise extends StatefulWidget {
  const AddMerchandise({super.key});

  @override
  State<AddMerchandise> createState() => _CategoriesState();
}

class _CategoriesState extends State<AddMerchandise> {
  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);
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
            "Add merchandise",
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
        width: sc.screenWidth,
        height: sc.screenHeight,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              elevation: 10,
              child: Container(
                width: sc.screenWidth * 0.9,
                height: sc.screenHeight * 0.8,
                padding: const EdgeInsets.all(15),
                color: Colors.white.withOpacity(0.1),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            width: sc.screenWidth * 0.35,
                            height: sc.screenHeight * 0.7,
                            child: Expanded(
                              child: Column(
                                children: [
                                  AutoSizeText(
                                    "Merchandise Infor",
                                    style: GoogleFonts.alfaSlabOne(),
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 16),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            labelText: "product name",
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter a product name',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 16),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            labelText: "product Price",
                                            border: OutlineInputBorder(),
                                            hintText: 'e.g KES 3,000',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 16),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            labelText: "number of units",
                                            border: OutlineInputBorder(),
                                            hintText: 'e.g 5',
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const VerticalDivider(),
                        Container(
                          width: sc.screenWidth * 0.35,
                          child: Column(
                            children: [
                              AutoSizeText(
                                "Merchandise Details",
                                style: GoogleFonts.alfaSlabOne(),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: sc.screenWidth * 0.15,
                                    height: sc.screenHeight * 0.25,
                                    color: Colors.grey.withOpacity(0.3),
                                    child: const Icon(
                                      Icons.image,
                                      size: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    width: sc.screenWidth * 0.15,
                                    height: sc.screenHeight * 0.1,
                                    child: AppButton(
                                      prefix: const Icon(Icons.upload),
                                      label: "Upload Image",
                                      fontColor: Colors.white,
                                      fontSize: 15,
                                      onTap: () {},
                                    ),
                                  )
                                ],
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                  "Colors available",
                                  style: GoogleFonts.alfaSlabOne(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: sc.screenWidth * 0.3,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.red,
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.grey),
                                                  value: true,
                                                  onChanged: (value) {}))
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.blue,
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.grey),
                                                  value: false,
                                                  onChanged: (value) {}))
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.green,
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.grey),
                                                  value: true,
                                                  onChanged: (value) {}))
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  value: true,
                                                  onChanged: (value) {}))
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.black,
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.grey),
                                                  value: true,
                                                  onChanged: (value) {}))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AutoSizeText(
                                  "Available sizes",
                                  style: GoogleFonts.alfaSlabOne(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: sc.screenWidth * 0.3,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            child: Text(
                                              "S",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  value: true,
                                                  onChanged: (value) {}))
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            child: Text(
                                              "M",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  value: false,
                                                  onChanged: (value) {}))
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            child: Text(
                                              "L",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  value: true,
                                                  onChanged: (value) {}))
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            child: Text(
                                              "XL",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  value: true,
                                                  onChanged: (value) {}))
                                        ],
                                      ),
                                      Stack(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.grey,
                                          ),
                                          Positioned(
                                              bottom: -10,
                                              right: -10,
                                              child: Checkbox(
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Colors.black),
                                                  value: true,
                                                  onChanged: (value) {}))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AppButton(
              onTap: () {},
              label: 'SAVE',
              fontColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
