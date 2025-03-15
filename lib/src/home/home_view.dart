import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:nstudio/src/home/components/home_about_section.dart';
import 'package:nstudio/src/home/components/home_app_bar.dart';
import 'package:nstudio/src/home/components/home_contact_section.dart';
import 'package:nstudio/src/home/components/home_hero_section.dart';
import 'package:nstudio/src/home/components/home_products_section.dart';
import 'package:nstudio/src/home/data/home_products_repository.dart';
import 'package:nstudio/src/home/data/models/home_section_type.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _selectedSection = HomeSectionType.home;
  final GlobalKey _heroSectionKey = GlobalKey();
  final GlobalKey _productsSectionKey = GlobalKey();
  final GlobalKey _aboutSectionKey = GlobalKey();
  final GlobalKey _contactSectionKey = GlobalKey();

  void _scrollToSection(HomeSectionType section) {
    final GlobalKey keyToUse;
    switch (section) {
      case HomeSectionType.home:
        keyToUse = _heroSectionKey;
        break;
      case HomeSectionType.shop:
        keyToUse = _productsSectionKey;
        break;
      case HomeSectionType.aboutUs:
        keyToUse = _aboutSectionKey;
        break;
      case HomeSectionType.contact:
        keyToUse = _contactSectionKey;
        break;
    }
    _selectedSection = section;
    final context = keyToUse.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
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
      appBar: HomeAppBar(
        selectedSection: _selectedSection,
        onSectionSelected: (newSection) => setState(() {
          _scrollToSection(newSection);
        }),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            HomeHeroSection(
              key: _heroSectionKey,
              onShopNowClicked: () {
                setState(() {
                  _scrollToSection(HomeSectionType.shop);
                });
              },
            ),
            HomeProductsSection(
              key: _productsSectionKey,
              productsList: HomeProductsRepository.fetchProducts(),
              onExploreProductsClicked: () {},
            ),
            HomeAboutSection(
              key: _aboutSectionKey,
            ),
            HomeContactSection(
              key: _contactSectionKey,
              onInstagramClicked: () {},
              onPhoneClicked: () {},
              onEmailClicked: () {},
            ),
          ],
        ),
      ),
    );
  }
}
