import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class TableController extends GetxController {

  RxList<Map<String, dynamic>> tableData = RxList<Map<String, dynamic>>();

  @override
  void onInit() {

    tableData.addAll([
      {'name': 'Java', 'uid': '35', 'docType': 'Image', 'image': 'Assets/image1.jpeg'},
      {'name': 'Python', 'uid': '23', 'docType': 'Video', 'image': 'Assets/image1.jpeg'},
      {'name': 'Kotlin', 'uid': '54', 'docType': 'pdf', 'image': 'Assets/image1.jpeg'},
      {'name': 'Kotlin', 'uid': '54', 'docType': 'pdf', 'image': 'Assets/image1.jpeg'},
    ]);
    super.onInit();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Table using GetX',
      home: MyTableWidget(),
    );
  }
}

class MyTableWidget extends StatelessWidget {
  final TableController tableController = Get.put(TableController());

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

                DataColumn(label: Text('Name')),
                DataColumn(label: Text('UID')),
                DataColumn(label: Text('Doc Type')),
                DataColumn(label: Text('Image')),
              ],
              rows: controller.tableData
                  .map(
                    (data) => DataRow(cells: [

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
