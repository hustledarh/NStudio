import 'package:flutter/material.dart';
import 'package:nstudio/src/home/components/home_about_section.dart';
import 'package:nstudio/src/home/components/home_app_bar.dart';
import 'package:nstudio/src/home/components/home_contact_section.dart';
import 'package:nstudio/src/home/components/home_hero_section.dart';
import 'package:nstudio/src/home/components/home_products_section.dart';
import 'package:nstudio/src/home/data/home_products_repository.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBar(
        selectedSection: AppSectionType.home,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeroSection(),
            HomeProductsSection(
              HomeProductsRepository.fetchProducts(),
            ),
            HomeAboutSection(),
            HomeContactSection(),
          ],
        ),
      ),
    );
  }
}
