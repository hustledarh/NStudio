import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_size.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:nstudio/src/home/data/models/home_product_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeProductsSection extends StatelessWidget {
  final List<HomeProductItem> productsList;
  final VoidCallback onExploreProductsClicked;

  const HomeProductsSection({
    super.key,
    required this.productsList,
    required this.onExploreProductsClicked,
  });

  @override
  Widget build(BuildContext context) {
    final sectionWidth = MediaQuery.sizeOf(context).width - 96;

    final int crossAxisCount;
    // Legacy 300
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      crossAxisCount = (sectionWidth / 350).floor();
    } else if (ResponsiveBreakpoints.of(context).isTablet) {
      crossAxisCount = (sectionWidth / 250).floor();
    } else {
      crossAxisCount = (sectionWidth / 150).floor();
    }

    final horizontalPadding = ResponsiveBreakpoints.of(context).isDesktop
        ? StudioSize.homeSectionHorizontalPaddingDesktop
        : StudioSize.homeSectionHorizontalPadding;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: StudioSize.homeSectionTopPadding,
        horizontal: horizontalPadding,
      ),
      child: Column(
        children: [
          Text(
            "Our Products",
            style: TextStyle(
              fontSize: StudioSize.homeHeaderTextSize,
              fontWeight: FontWeight.bold,
              color: StudioColors.homeProductsTextHeader,
            ),
          ),
          SizedBox(
            height: StudioSize.homePaddingAfterHeader,
          ),
          GridView.builder(
            itemCount: productsList.length.clamp(0, 6),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (BuildContext context, int index) {
              return _ProductItem(productsList[index]);
            },
          ),
          SizedBox(
            height: 48,
          ),
          FilledButton(
            onPressed: onExploreProductsClicked,
            style: FilledButton.styleFrom(
              backgroundColor: StudioColors.homeProductsButtonBackground,
              foregroundColor: StudioColors.homeProductsButtonText,
              textStyle: TextStyle(
                fontSize: StudioSize.homeButtonTextSize,
                fontWeight: FontWeight.w600,
              ),
              fixedSize: Size.fromHeight(StudioSize.homeButtonHeight),
              padding: EdgeInsets.symmetric(
                horizontal: StudioSize.homeButtonPaddingHorizontal,
                vertical: StudioSize.homeButtonPaddingVertical,
              ),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(StudioSize.homeButtonBorderRadius),
              ),
            ),
            child: Text("Explore All Products"),
          ),
        ],
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  final HomeProductItem productItem;

  const _ProductItem(this.productItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(StudioSize.imageBorderRadius),
            child: Image.asset(
              productItem.assetName,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 8, left: 16),
          child: Text(
            productItem.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: ResponsiveBreakpoints.of(context).isMobile ? 20 : 16,
              fontWeight: FontWeight.bold,
              color: StudioColors.homeProductsTextProduct,
            ),
          ),
        ),
      ],
    );
  }
}
