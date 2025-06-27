import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/modules/chart/controller/Chartcontroller.dart';

class ChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChartController());
  }
}
