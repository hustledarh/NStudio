import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/home/data/models/home_product_item.dart';

class HomeProductsRepository {
  const HomeProductsRepository._();

  static List<HomeProductItem> fetchProducts() {
    return List.unmodifiable(
      [
        HomeProductItem(
          name: 'Baby Collage',
          assetName: StudioImages.productBabyCollage,
        ),
        HomeProductItem(
          name: 'Family Collage 1',
          assetName: StudioImages.productFamilyCollage1,
        ),
        HomeProductItem(
          name: 'Family Collage 2',
          assetName: StudioImages.productFamilyCollage2,
        ),
        HomeProductItem(
          name: 'Hindi Lyrics',
          assetName: StudioImages.productLyricsHindi,
        ),
        HomeProductItem(
          name: 'Hinglish Lyrics 1',
          assetName: StudioImages.productLyricsHinglish1,
        ),
        HomeProductItem(
          name: 'Hinglish Lyrics 2',
          assetName: StudioImages.productLyricsHinglish2,
        ),
        HomeProductItem(
          name: 'Travel Collage',
          assetName: StudioImages.productTravelCollage,
        ),
        HomeProductItem(
          name: 'Wall Collage',
          assetName: StudioImages.productWallCollage,
        ),
      ],
    );
  }
}
