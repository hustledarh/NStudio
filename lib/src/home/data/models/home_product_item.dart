class HomeProductItem {
  final String name;
  final String assetName;
  final String tag;
  final bool isFeatured;

  const HomeProductItem({
    required this.name,
    required this.assetName,
    required this.tag,
    this.isFeatured = false,
  });
}
