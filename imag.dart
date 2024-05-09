import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TableController extends GetxController {
  // Observable list to hold table data
  RxList<Map<String, dynamic>> tableData = RxList<Map<String, dynamic>>();

  @override
  void onInit() {
    // Initialize the table data
    tableData.addAll([
      {'name': 'Java', 'uid': '35', 'docType': 'Image', 'image': 'Assets/image1.jpeg'},
      {'name': 'Python', 'uid': '23', 'docType': 'Video', 'image': 'Assets/image1.jpeg'},
      {'name': 'Kotlin', 'uid': '54', 'docType': 'pdf', 'image': 'Assets/image1.jpeg'},
      {'name': 'Kotlin', 'uid': '54', 'docType': 'pdf', 'image': 'Assets/image1.jpeg'},
    ]);
    super.onInit();
  }
}
