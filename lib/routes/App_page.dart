import 'package:get/get.dart';
import 'package:task/modules/chart/bindings/chartBindings.dart';
import 'package:task/modules/chart/view/chartview.dart';
import 'package:task/modules/home/Home.dart';
import 'package:task/modules/home/bindings/home_bindings.dart';
import 'package:task/modules/profile/view/profileview.dart';
import 'package:task/routes/Approutes.dart';

class AppPage {
  static final routes = [
    GetPage(
      name: AppRoutes.chart,
      page: () => const ChartView(),
      binding: ChartBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(), // Uncomment if you have a HomeBinding
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileScreen(),
    ),
  ];
}
