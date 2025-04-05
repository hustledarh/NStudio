import 'package:flutter/material.dart';
import 'package:nstudio/src/design/components/image_watermark.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/design/constants/studio_size.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeAboutSectionV2 extends StatelessWidget {
  const HomeAboutSectionV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 32,
      ),
      child: ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).smallerThan(TABLET)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          columnSpacing: 32,
          rowSpacing: 32,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(StudioSize.imageBorderRadius),
                child: ImageWatermark(
                  assetName: StudioImages.productFrameWithCandle,
                  aspectRatio: 1.3,
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Handmade with Love",
                    style: TextStyle(
                      fontSize:
                          ResponsiveBreakpoints.of(context).isDesktop ? 36 : 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "At Studio N, “Handmade with Love” means delivering authentic, sustainable luxury for moments that truly matter.\n\nHand-crafted with care by Maharasthra artisans, our products embody the spirit of the mountains and the art of generations. Every candle and décor piece is thoughtfully made, blending natural materials, premium 100 % natural fragrances, and a touch of tradition.",
                    style: TextStyle(
                      fontSize: 18,
                      color: StudioColors.mutedForeground,
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
