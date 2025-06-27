class ChartItemModel {
  final String title;
  final String description;
  final String imageUrl;
  final String date;
  final num price;
  final num quantity;
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
