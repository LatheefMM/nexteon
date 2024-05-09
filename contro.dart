import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'imag.dart';


class MyTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table using GetX'),
      ),
      body: Center(
        // GetX controller to manage table data
        child: GetBuilder<TableController>(
          builder: (controller) {
            return DataTable(
              columns: [
                // Define the columns of the table
                DataColumn(label: Text('Name',style: TextStyle(fontWeight: FontWeight.bold),)),
                DataColumn(label: Text('UID',style: TextStyle(fontWeight: FontWeight.bold),)),
                DataColumn(label: Text('Doc Type',style: TextStyle(fontWeight: FontWeight.bold),)),
                DataColumn(label: Text('Image',style: TextStyle(fontWeight: FontWeight.bold),)),
              ],
              rows: controller.tableData
                  .map(
                    (data) => DataRow(cells: [
                  // Create a DataRow for each entry in the table data
                  DataCell(Text(data['name'])),
                  DataCell(Text(data['uid'])),
                  DataCell(Text(data['docType'])),
                  DataCell(Image.network(data['image'])),
                ]),
              )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
