import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/design/studio_colors.dart';

class HomeHeroSection extends StatelessWidget {
  const HomeHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final sectionHeight = MediaQuery.sizeOf(context).height * 0.92;
    final sectionWidth = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: sectionHeight,
      width: sectionWidth,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: sectionHeight / 2,
            width: double.infinity,
            color: StudioColors.primaryGreen,
          ),
          Positioned(
            top: sectionHeight * 0.4,
            left: 48,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Studio N",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Crafted with Love, Inspired by You",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                FilledButton(
                  onPressed: () {
                    // TODO: Implement navigation
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    fixedSize: Size.fromHeight(48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text("SHOP NOW"),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 48),
            child: Image.asset(
              StudioImages.spotifyEnglishLyrics,
              width: sectionHeight * 0.6,
              height: sectionHeight * 0.6,
            ),
          ),
        ],
      ),
    );
  }
}
