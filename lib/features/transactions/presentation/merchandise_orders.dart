import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/features/home/presentation/pages/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MerchandiseOrders extends StatefulWidget {
  const MerchandiseOrders({super.key});

  @override
  State<MerchandiseOrders> createState() => _MerchandiseOrdersState();
}

class _MerchandiseOrdersState extends State<MerchandiseOrders> {
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
            "Merchandise orders",
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
                child: const MerchandiseList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MerchandiseList extends StatelessWidget {
  const MerchandiseList({
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                      "name",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "phone",
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
                    label: Text("date ordered",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                  DataColumn(
                    label: Text("units",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                  DataColumn(
                    label: Text("status",
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
      DataCell(Text("Eric")),
      DataCell(Text("254374827")),
      DataCell(Text("hoodie")),
      DataCell(Text("ykhhheibewiherwh")),
      DataCell(Text("3000")),
      DataCell(Text("21/2/2022")),
      DataCell(Text("35")),
      DataCell(Chip(
        backgroundColor: AppColors.primaryColor,
        label: Text(
          "actioned",
          style: TextStyle(color: AppColors.white),
        ),
      )),
      DataCell(Chip(
        label: Icon(Icons.remove_red_eye, color: Colors.white),
      )),
    ],
  );
}
