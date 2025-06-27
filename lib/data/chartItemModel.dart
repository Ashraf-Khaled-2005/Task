import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ChartItemModel {
  final String title;
  final String description;
  final String imageUrl;
  final String date;
  final num price;
  RxInt quantity;
  final String status;

  ChartItemModel(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.date,
      required this.price,
      required this.quantity,
      required this.status});
}
