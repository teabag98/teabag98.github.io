import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/features/home/presentation/pages/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
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
            "My Products",
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
                child: const ProductList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
