import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/home/data/models/home_product_item.dart';

class HomeProductsRepository {
  const HomeProductsRepository._();

  static const String collageTag = 'Collages';
  static const String lyricTag = 'Lyrics';
  static const String candleTag = 'Candles';

  static List<HomeProductItem> fetchProducts({String? tag}) {
    if (tag == null) {
      return _fetchProducts();
    } else {
      return _fetchProducts().where((product) => product.tag == tag).toList();
    }
  }

  static List<HomeProductItem> _fetchProducts() {
    return List.unmodifiable(
      [
        HomeProductItem(
          name: 'Baby Collage',
          assetName: StudioImages.productBabyCollage,
          tag: collageTag,
          isFeatured: true,
        ),
        HomeProductItem(
          name: 'Family Collage 1',
          assetName: StudioImages.productFamilyCollage1,
          isFeatured: true,
          tag: collageTag,
        ),
        HomeProductItem(
          name: 'Family Collage 2',
          assetName: StudioImages.productFamilyCollage2,
          tag: collageTag,
          isFeatured: true,
        ),
        HomeProductItem(
          name: 'Hindi Lyrics',
          assetName: StudioImages.productLyricsHindi,
          tag: lyricTag,
          isFeatured: true,
        ),
        HomeProductItem(
          name: 'Hinglish Lyrics 1',
          assetName: StudioImages.productLyricsHinglish1,
          tag: lyricTag,
        ),
        HomeProductItem(
          name: 'Hinglish Lyrics 2',
          assetName: StudioImages.productLyricsHinglish2,
          tag: lyricTag,
        ),
        HomeProductItem(
          name: 'Travel Collage',
          assetName: StudioImages.productTravelCollage,
          tag: collageTag,
        ),
        HomeProductItem(
          name: 'Wall Collage',
          assetName: StudioImages.productWallCollage,
          tag: collageTag,
        ),
      ],
    );
  }
}
