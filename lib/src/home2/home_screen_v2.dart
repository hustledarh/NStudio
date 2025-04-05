import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:nstudio/src/home/data/models/home_section_type.dart';
import 'package:nstudio/src/home2/components/home_about_section_v2.dart';
import 'package:nstudio/src/home2/components/home_app_bar_v2.dart';
import 'package:nstudio/src/home2/components/home_contact_section_v2.dart';
import 'package:nstudio/src/home2/components/home_hero_section_v2.dart';
import 'package:nstudio/src/home2/components/home_products_section_v2.dart';

class HomeScreenV2 extends StatefulWidget {
  const HomeScreenV2({super.key});

  @override
  State<HomeScreenV2> createState() => _HomeScreenV2State();
}

class _HomeScreenV2State extends State<HomeScreenV2> {
  final GlobalKey _heroSectionKey = GlobalKey();
  final GlobalKey _productsSectionKey = GlobalKey();
  final GlobalKey _aboutSectionKey = GlobalKey();
  final GlobalKey _contactSectionKey = GlobalKey();

  void _scrollToSection(HomeSectionType section) async {
    final GlobalKey keyToUse;
    switch (section) {
      case HomeSectionType.home:
        keyToUse = _heroSectionKey;
        break;
      case HomeSectionType.products:
        keyToUse = _productsSectionKey;
        break;
      case HomeSectionType.aboutUs:
        keyToUse = _aboutSectionKey;
        break;
      case HomeSectionType.contact:
        keyToUse = _contactSectionKey;
        break;
    }
    final context = keyToUse.currentContext;
    if (context != null) {
      await Scrollable.ensureVisible(
        context,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StudioColors.backgroundHome,
      appBar: HomeAppBarV2(
        onSectionSelected: (newSection) {
          _scrollToSection(newSection);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeroSectionV2(
              key: _heroSectionKey,
              onShopNow: () {
                _scrollToSection(HomeSectionType.products);
              },
              onLearnMore: () {
                _scrollToSection(HomeSectionType.aboutUs);
              },
            ),
            HomeProductsSectionV2(
              key: _productsSectionKey,
            ),
            HomeAboutSectionV2(
              key: _aboutSectionKey,
            ),
            HomeContactSectionV2(
              key: _contactSectionKey,
              onInstagramClicked: () {
                // Handle Instagram click
              },
              onPhoneClicked: () {
                // Handle Phone click
              },
              onEmailClicked: () {
                // Handle Email click
              },
            ),
          ],
        ),
      ),
    );
  }
}
