import 'package:flutter/material.dart';
import 'package:nstudio/src/design/components/image_watermark.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:nstudio/src/design/constants/studio_size.dart';
import 'package:nstudio/src/home/data/models/home_product_item.dart';

class HomeProductItemV2 extends StatefulWidget {
  final HomeProductItem productItem;

  const HomeProductItemV2({
    super.key,
    required this.productItem,
  });

  @override
  State<HomeProductItemV2> createState() => _HomeProductItemV2State();
}

class _HomeProductItemV2State extends State<HomeProductItemV2> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(StudioSize.imageBorderRadius),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Stack(
                    children: [
                      ImageWatermark(
                        assetName: widget.productItem.assetName,
                        aspectRatio: 1,
                      ),
                      if (_isHovered) Positioned.fill(child: _HoveredState()),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.productItem.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.productItem.tag,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: StudioColors.mutedForeground,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (widget.productItem.isFeatured) _FeaturedTag(),
        ],
      ),
    );
  }
}

class _FeaturedTag extends StatelessWidget {
  const _FeaturedTag();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: StudioColors.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Featured",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: StudioColors.primaryForeground,
        ),
      ),
    );
  }
}

class _HoveredState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            // Handle button click
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.black,
              ),
              SizedBox(width: 8),
              Text(
                "View Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
