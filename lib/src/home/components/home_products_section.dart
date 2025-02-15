import 'package:flutter/material.dart';
import 'package:nstudio/src/design/studio_colors.dart';
import 'package:nstudio/src/design/utils/device_utils.dart';
import 'package:nstudio/src/home/data/models/home_product_item.dart';

class HomeProductsSection extends StatelessWidget {
  final List<HomeProductItem> productsList;
  const HomeProductsSection(
    this.productsList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sectionWidth = MediaQuery.sizeOf(context).width - 96;

    final crossAxisCount = (DeviceUtils.isDesktop(context)
            ? (sectionWidth / 350)
            : (sectionWidth / 300))
        .floor();
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 48,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Text(
              "OUR PRODUCTS",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GridView.builder(
            itemCount: productsList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        productsList[index].assetName,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productsList[index].name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 24,
          ),
          FilledButton(
            onPressed: () {
              // TODO
            },
            style: FilledButton.styleFrom(
              backgroundColor: StudioColors.primaryGreen,
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              fixedSize: Size.fromHeight(48),
              padding: EdgeInsets.symmetric(horizontal: 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text("Explore All Products"),
          ),
        ],
      ),
    );
  }
}
