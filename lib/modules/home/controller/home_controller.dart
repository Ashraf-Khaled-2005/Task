import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:task/data/UserModel.dart';

class HomeController extends GetxController {
  var user = Rxn<UserModel>();
  var isLoading = false.obs;
  var error = ''.obs;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Your static document ID (set to real one)
  final String staticUserId = '3SILLOiQ50oo2Odq7Gr6';

  Future<void> fetchUserInfo() async {
    try {
      isLoading.value = true;

      DocumentSnapshot doc =
          await _firestore.collection('Users').doc(staticUserId).get();

      if (doc.exists) {
        user.value = UserModel.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        Get.snackbar('Error', 'User not found');
      }
    } catch (e) {
      error.value = e.toString();
      Get.snackbar('Error', 'Failed to fetch user: $e');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchUserInfo();
  }
}
