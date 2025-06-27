import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task/core/const/AppString.dart';
import 'package:task/data/chartItemModel.dart';

class ChartController extends GetxController {
  var chartItems = <ChartItemModel>[].obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    fetchChartItems();
    super.onInit();
  }

  Future<void> fetchChartItems() async {
    try {
      isLoading.value = true;
      final items =
          FirebaseFirestore.instance.collection(AppString.itemFirebase);
      final snapshot = await items.get();

      chartItems.value = snapshot.docs.map((doc) {
        return ChartItemModel(
          title: doc['title'] ?? '',
          description: doc['description'] ?? '',
          imageUrl: doc['imageUrl'] ?? '',
          date: (doc['date'] as String) ?? '',
          price: doc['price'] ?? 0,
          quantity: doc['quantity'] != null
              ? RxInt(doc['quantity'])
              : RxInt(0), // Ensure quantity is always an RxInt
          status: doc['status'] ?? '',
        );
      }).toList();
    } catch (e) {
      errorMessage.value = 'Failed to fetch chart items: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
