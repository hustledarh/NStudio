import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/home/data/models/home_product_item.dart';

class HomeProductsRepository {
  const HomeProductsRepository._();

  static List<HomeProductItem> fetchProducts() {
    return List.unmodifiable(
      [
        HomeProductItem(
          name: 'Travel Collage',
          assetName: StudioImages.spotifyEnglishLyrics,
        ),
        HomeProductItem(
          name: 'Family Collage',
          assetName: StudioImages.spotifyEnglishLyrics,
        ),
        HomeProductItem(
          name: 'Baby Collage',
          assetName: StudioImages.spotifyEnglishLyrics,
        ),
        HomeProductItem(
          name: 'Spotify English Lyrics',
          assetName: StudioImages.spotifyEnglishLyrics,
        ),
        HomeProductItem(
          name: 'Spotify Hindi Lyrics',
          assetName: StudioImages.spotifyEnglishLyrics,
        ),
      ],
    );
  }
}
