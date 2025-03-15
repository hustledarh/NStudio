import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/design/constants/studio_size.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeAboutSection extends StatelessWidget {
  const HomeAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: StudioColors.bgHomeAboutSection,
      padding: EdgeInsets.symmetric(
        vertical: StudioSize.homeSectionTopPadding,
        horizontal: StudioSize.homeSectionHorizontalPadding,
      ),
      child: Column(
        children: [
          Text(
            "About Us",
            style: TextStyle(
              fontSize: StudioSize.homeHeaderTextSize,
              fontWeight: FontWeight.bold,
              color: StudioColors.textHomeAboutHeader,
            ),
          ),
          SizedBox(
            height: StudioSize.homePaddingAfterHeader,
          ),
          ResponsiveRowColumn(
              layout: ResponsiveBreakpoints.of(context).smallerThan(TABLET)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              columnSpacing: 24,
              rowSpacing: 24,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(StudioSize.imageBorderRadius),
                    child: Image.asset(
                      StudioImages.spotifyEnglishLyrics,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Handmade with Love",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: StudioColors.textHomeAboutContentHeader,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "At Studio N, “Handmade with Love” means delivering authentic, sustainable luxury for moments that truly matter.Hand-crafted with care by Himalayan artisans, our products embody the spirit of the mountains and the art of generations. Every candle and décor piece is thoughtfully made, blending natural materials, premium 100 % natural fragrances, and a touch of tradition.",
                        style: TextStyle(
                          fontSize: 18,
                          color: StudioColors.textHomeAboutContent,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
