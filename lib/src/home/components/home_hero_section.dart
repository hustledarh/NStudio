import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/design/constants/studio_size.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeHeroSection extends StatelessWidget {
  final VoidCallback onShopNowClicked;

  const HomeHeroSection({required this.onShopNowClicked, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleConditions: [
            Condition.equals(name: MOBILE),
            Condition.equals(name: TABLET),
          ],
          child: _HomeHeroSectionMobile(
            onShopNowClicked: onShopNowClicked,
          ),
        ),
        ResponsiveVisibility(
          visible: false,
          visibleConditions: [
            Condition.largerThan(name: TABLET),
          ],
          child: _HomeHeroSectionWeb(
            onShopNowClicked: onShopNowClicked,
          ),
        ),
      ],
    );
  }
}

class _HomeHeroSectionWeb extends StatelessWidget {
  final VoidCallback onShopNowClicked;

  const _HomeHeroSectionWeb({
    required this.onShopNowClicked,
  });

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
            color: StudioColors.backgroundHomeHeroSelected,
          ),
          Positioned(
            top: sectionHeight * 0.4,
            left: 48,
            child: _WelcomeMessageColumn(
              CrossAxisAlignment.start,
              onShopNowClicked: onShopNowClicked,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 48),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(StudioSize.imageBorderRadius),
              child: Image.asset(
                StudioImages.spotifyEnglishLyrics,
                width: sectionHeight * 0.6,
                height: sectionHeight * 0.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeHeroSectionMobile extends StatelessWidget {
  final VoidCallback onShopNowClicked;

  const _HomeHeroSectionMobile({required this.onShopNowClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: StudioSize.homeSectionTopPadding,
        left: StudioSize.homeSectionHorizontalPadding,
        right: StudioSize.homeSectionHorizontalPadding,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(StudioSize.imageBorderRadius),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: StudioColors.backgroundHomeHeroSelected,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: _WelcomeMessageColumn(
                CrossAxisAlignment.center,
                onShopNowClicked: onShopNowClicked,
              ),
            ),
            Image.asset(
              StudioImages.spotifyEnglishLyrics,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

class _WelcomeMessageColumn extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final VoidCallback onShopNowClicked;

  const _WelcomeMessageColumn(
    this.crossAxisAlignment, {
    required this.onShopNowClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          "Welcome to",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: StudioColors.homeHeroTextWelcome,
          ),
        ),
        Text(
          "Studio N",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: StudioColors.homeHeroTextWelcome,
          ),
        ),
        Text(
          "Crafted with Love, Inspired by You",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: StudioColors.homeHeroTextWelcome,
          ),
        ),
        SizedBox(
          height: 48,
        ),
        FilledButton(
          onPressed: onShopNowClicked,
          style: FilledButton.styleFrom(
            backgroundColor: StudioColors.homeHeroButtonBackground,
            foregroundColor: StudioColors.homeHeroButtonText,
            padding: EdgeInsets.symmetric(
              horizontal: StudioSize.homeButtonPaddingHorizontal,
              vertical: StudioSize.homeButtonPaddingVertical,
            ),
            textStyle: TextStyle(
              fontSize: StudioSize.homeButtonTextSize,
              fontWeight: FontWeight.w600,
            ),
            fixedSize: Size.fromHeight(StudioSize.homeButtonHeight),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(StudioSize.homeButtonBorderRadius),
            ),
          ),
          child: Text("Shop Now"),
        ),
      ],
    );
  }
}
