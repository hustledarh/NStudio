import 'package:nstudio/src/home/data/models/home_product_type.dart';

class HomeProductItem {
  final String name;
  final List<String> assetName;
  final HomeProductType type;
  final bool isFeatured;

  const HomeProductItem({
    required this.name,
    required this.assetName,
    required this.type,
    this.isFeatured = false,
  });
}
