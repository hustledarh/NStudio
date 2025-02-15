import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/design/studio_colors.dart';

enum AppSectionType {
  home,
  aboutUs,
  shop,
  contact,
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppSectionType selectedSection;

  const HomeAppBar({
    super.key,
    required this.selectedSection,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 200,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: Image.asset(
        StudioImages.studioLogo,
        fit: BoxFit.fitHeight,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _AppBarButton(
            text: "Home",
            isSelected: selectedSection == AppSectionType.home,
            onPressed: () {
              // TODO
            },
          ),
          _AppBarButton(
            text: "About Us",
            isSelected: selectedSection == AppSectionType.aboutUs,
            onPressed: () {
              // TODO
            },
          ),
          _AppBarButton(
            text: "Shop",
            isSelected: selectedSection == AppSectionType.shop,
            onPressed: () {
              // TODO
            },
          ),
          _AppBarButton(
            text: "Contact",
            isSelected: selectedSection == AppSectionType.contact,
            onPressed: () {
              // TODO
            },
          ),
        ],
      ),
      actions: [
        SizedBox(width: 200),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
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
        foregroundColor: isSelected ? StudioColors.primaryGreen : Colors.black,
      ),
      child: Text(text),
    );
  }
}
