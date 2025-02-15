import 'package:flutter/material.dart';
import 'package:nstudio/src/design/studio_colors.dart';

class HomeContactSection extends StatelessWidget {
  const HomeContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: StudioColors.primaryGreen,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 48),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Text(
              'We are here to assist you with any questions or inquiries. Reach out to us via Instagram, phone, or email.\nFollow us on social media to stay updated with the latest news and exclusive offers.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.photo,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 16,
              ),
              IconButton(
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 16,
              ),
              IconButton(
                icon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
