import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:nstudio/src/design/constants/studio_size.dart';
import 'package:nstudio/src/home/data/models/home_section_type.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeAppBarV2 extends StatelessWidget implements PreferredSizeWidget {
  final void Function(HomeSectionType) onSectionSelected;

  const HomeAppBarV2({
    super.key,
    required this.onSectionSelected,
  });

  @override
  Size get preferredSize => Size.fromHeight(StudioSize.homeAppbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      height: StudioSize.homeAppbarHeight,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            StudioImages.studioLogo,
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 8),
          Text(
            "Studio N",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: StudioColors.homeAppbarTextPrimary,
            ),
          ),
          Spacer(),
          _AppBarButton(
            text: "Home",
            isSelected: false,
            onPressed: () {
              onSectionSelected(HomeSectionType.home);
            },
          ),
          _AppBarButton(
            text: "Products",
            isSelected: false,
            onPressed: () {
              onSectionSelected(HomeSectionType.products);
            },
          ),
          _AppBarButton(
            text: "About Us",
            isSelected: false,
            onPressed: () {
              onSectionSelected(HomeSectionType.aboutUs);
            },
          ),
          _AppBarButton(
            text: "Contact",
            isSelected: false,
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
        foregroundColor: isSelected
            ? StudioColors.homeAppbarTextSelected
            : StudioColors.homeAppbarTextPrimary,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
