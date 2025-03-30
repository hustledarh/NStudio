import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_images.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ImageWatermark extends StatelessWidget {
  final String assetName;
  final double? width;
  final double? height;
  final double? aspectRatio;
  final double? watermarkSize;

  const ImageWatermark({
    this.width = double.infinity,
    this.height = double.infinity,
    this.aspectRatio,
    this.watermarkSize,
    required this.assetName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        aspectRatio != null
            ? AspectRatio(
                aspectRatio: aspectRatio!,
                child: Image.asset(
                  assetName,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                assetName,
                fit: BoxFit.cover,
                width: width,
                height: height,
              ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 16,
          child: Image.asset(
            StudioImages.studioLogo,
            width: watermarkSize ??
                (ResponsiveBreakpoints.of(context).isMobile ? 30 : 40),
            height: watermarkSize ??
                (ResponsiveBreakpoints.of(context).isMobile ? 30 : 40),
          ),
        ),
      ],
    );
  }
}
