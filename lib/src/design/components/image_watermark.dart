import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';

class ImageWatermark extends StatelessWidget {
  final String assetName;
  final double? width;
  final double? height;
  final double watermarkSize;

  const ImageWatermark({
    this.width = double.infinity,
    this.height = double.infinity,
    this.watermarkSize = 40,
    required this.assetName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          StudioImages.spotifyEnglishLyrics,
          fit: BoxFit.cover,
          width: width,
          height: height,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 16,
          child: Image.asset(
            StudioImages.studioLogo,
            width: watermarkSize,
            height: watermarkSize,
          ),
        ),
      ],
    );
  }
}
