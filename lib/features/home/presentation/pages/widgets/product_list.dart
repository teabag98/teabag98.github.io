import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: SizeConfig(context: context).screenWidth * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AutoSizeText(
                    "Merchandise",
                    style: GoogleFonts.andika(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: sc.screenWidth * 0.2,
                    height: sc.screenHeight * 0.08,
                    child: const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          suffix: Icon(Icons.search),
                          labelText: "search",
                          border: OutlineInputBorder(),
                          hintText: 'Enter search term'),
                    ),
                  ),
                  const Chip(
                      avatar: Icon(Icons.upload, color: Colors.white),
                      backgroundColor: AppColors.primaryColor,
                      label: AutoSizeText(
                        "Import CSV",
                        style: TextStyle(color: Colors.white),
                      )),
                  const Chip(
                      avatar: Icon(Icons.download, color: Colors.white),
                      backgroundColor: AppColors.red,
                      label: AutoSizeText(
                        "Export CSV",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                // columnSpacing: defaultPadding,
                dataRowColor: const MaterialStatePropertyAll(Colors.white),
                border: TableBorder.all(style: BorderStyle.none),
                columns: [
                  DataColumn(
                    label: Text(
                      "Image",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Categories",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Product",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text("sku number",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                  DataColumn(
                    label: Text("Price",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                  DataColumn(
                    label: Text("amount/units",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                  DataColumn(
                    label: Text("edit",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                  DataColumn(
                    label: Text("view",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                ],
                rows: List.generate(
                  7,
                  (index) => recentFileDataRow(Icons.ac_unit_rounded),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DataRow recentFileDataRow(IconData icon) {
  return const DataRow(
    cells: [
      // DataCell(
      //   Row(
      //     children: [
      //       Icon(
      //         icon,
      //         size: 30,
      //       ),s
      //       const Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 8),
      //         child: Text("Edgee hoodie"),
      //       ),
      //     ],
      //   ),
      // ),
      DataCell(CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(
            "https://discovernaivasha.co.ke/wp-content/uploads/2022/06/3-300x300.png"),
        backgroundColor: Colors.white,
      )),
      DataCell(Text("Merchandise")),
      DataCell(Text("hoodie")),
      DataCell(Text("ykhhheibewiherwh")),
      DataCell(Text("3000")),
      DataCell(Text("35")),
      DataCell(Chip(
        label: Icon(
          Icons.edit,
          color: Colors.white,
        ),
      )),
      DataCell(Chip(
        label: Icon(Icons.remove_red_eye, color: Colors.white),
      )),
    ],
  );
}
