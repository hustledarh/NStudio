import 'package:flutter/material.dart';
import 'package:nstudio/src/design/constants/studio_colors.dart';
import 'package:nstudio/src/design/constants/studio_size.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeContactSection extends StatelessWidget {
  final VoidCallback onInstagramClicked;
  final VoidCallback onPhoneClicked;
  final VoidCallback onEmailClicked;

  const HomeContactSection({
    required this.onInstagramClicked,
    required this.onPhoneClicked,
    required this.onEmailClicked,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: StudioColors.bgHomeContactSection,
      padding: EdgeInsets.symmetric(
        vertical: StudioSize.homeSectionTopPadding,
        horizontal: StudioSize.homeSectionHorizontalPadding,
      ),
      child: Column(
        children: [
          Text(
            'Contact Us',
            style: TextStyle(
              fontSize: StudioSize.homeHeaderTextSize,
              fontWeight: FontWeight.bold,
              color: StudioColors.textHomeContactHeader,
            ),
          ),
          SizedBox(
            height: StudioSize.homePaddingAfterHeader,
          ),
          Text(
            'We are here to assist you with any questions or inquiries. Reach out to us via Instagram, phone, or email.\nFollow us on social media to stay updated with the latest news and exclusive offers.',
            style: TextStyle(
              color: StudioColors.textHomeContactContent,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24,
          ),
          _SocialOptionsRow(
            onInstagramClicked: onInstagramClicked,
            onPhoneClicked: onPhoneClicked,
            onEmailClicked: onEmailClicked,
          ),
        ],
      ),
    );
  }
}

class _SocialOptionsRow extends StatelessWidget {
  final VoidCallback onInstagramClicked;
  final VoidCallback onPhoneClicked;
  final VoidCallback onEmailClicked;

  const _SocialOptionsRow({
    required this.onInstagramClicked,
    required this.onPhoneClicked,
    required this.onEmailClicked,
  });

  @override
  Widget build(BuildContext context) {
    final iconSize = ResponsiveBreakpoints.of(context).isMobile ? 24.0 : 36.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          iconSize: iconSize,
          icon: Icon(
            Icons.photo,
            color: Colors.white,
          ),
          onPressed: onInstagramClicked,
        ),
        SizedBox(
          width: 16,
        ),
        IconButton(
          iconSize: iconSize,
          icon: Icon(
            Icons.phone,
            color: Colors.white,
          ),
          onPressed: onPhoneClicked,
        ),
        SizedBox(
          width: 16,
        ),
        IconButton(
          iconSize: iconSize,
          icon: Icon(
            Icons.mail,
            color: Colors.white,
          ),
          onPressed: onEmailClicked,
        ),
      ],
    );
  }
}
