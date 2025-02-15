import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/design/studio_colors.dart';
import 'package:nstudio/src/design/utils/device_utils.dart';

class HomeAboutSection extends StatelessWidget {
  const HomeAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final sectionHeight = MediaQuery.sizeOf(context).height * 0.92;
    final sectionWidth = MediaQuery.sizeOf(context).width;

    // TODO Fix Mobile View
    final crossAxisCount = (DeviceUtils.isDesktop(context)
            ? (sectionWidth / (sectionWidth / 2))
            : 1)
        .floor();

    return Container(
      height: sectionHeight,
      color: StudioColors.greyLight,
      padding: EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 48,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "ABOUT US",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          GridView.builder(
            itemCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: 48,
              crossAxisSpacing: 48,
            ),
            itemBuilder: (BuildContext context, int index) {
              return index == 0
                  ? Center(
                      child: Image.asset(
                        StudioImages.spotifyEnglishLyrics,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Handmade with Love",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "At Studio N, “Handmade with Love” means delivering authentic, sustainable luxury for moments that truly matter.Hand-crafted with care by Himalayan artisans, our products embody the spirit of the mountains and the art of generations. Every candle and décor piece is thoughtfully made, blending natural materials, premium 100 % natural fragrances, and a touch of tradition.",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    );
            },
          ),
        ],
      ),
    );
  }
}
