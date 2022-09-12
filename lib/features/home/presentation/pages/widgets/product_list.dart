import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: SizeConfig(context: context).screenWidth * 0.8,
              child: AutoSizeText(
                "Products",
                style: GoogleFonts.acme(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                // columnSpacing: defaultPadding,
                columns: [
                  DataColumn(
                    label: Text(
                      "File Name",
                      style: GoogleFonts.poppins(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const DataColumn(
                    label: Text("Date"),
                  ),
                  const DataColumn(
                    label: Text("Size"),
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
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Icon(
              icon,
              size: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text("hello"),
            ),
          ],
        ),
      ),
      const DataCell(Text("world")),
      const DataCell(Text("hello")),
    ],
  );
}
