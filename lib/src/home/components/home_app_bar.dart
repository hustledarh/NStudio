import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/design/constants/studio_size.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:nstudio/src/home/data/models/home_section_type.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeSectionType selectedSection;
  final void Function(HomeSectionType) onSectionSelected;

  const HomeAppBar({
    super.key,
    required this.selectedSection,
    required this.onSectionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: StudioSize.homeAppbarHeight,
      child: Row(
        children: [
          Image.asset(
            StudioImages.studioLogo,
            fit: BoxFit.fitHeight,
          ),
          Spacer(),
          _AppBarButton(
            text: "Home",
            isSelected: selectedSection == HomeSectionType.home,
            onPressed: () {
              onSectionSelected(HomeSectionType.home);
            },
          ),
          _AppBarButton(
            text: "Products",
            isSelected: selectedSection == HomeSectionType.products,
            onPressed: () {
              onSectionSelected(HomeSectionType.products);
            },
          ),
          _AppBarButton(
            text: "About Us",
            isSelected: selectedSection == HomeSectionType.aboutUs,
            onPressed: () {
              onSectionSelected(HomeSectionType.aboutUs);
            },
          ),
          _AppBarButton(
            text: "Contact",
            isSelected: selectedSection == HomeSectionType.contact,
            onPressed: () {
              onSectionSelected(HomeSectionType.contact);
            },
          ),
          ResponsiveVisibility(
            visible: false,
            visibleConditions: [
              Condition.largerThan(name: TABLET),
            ],
            child: Spacer(
              flex: 1,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(StudioSize.homeAppbarHeight);
}

class _AppBarButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const _AppBarButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        overlayColor: StudioColors.primaryGreen,
        foregroundColor: isSelected
            ? StudioColors.homeAppbarTextSelected
            : StudioColors.homeAppbarTextPrimary,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
