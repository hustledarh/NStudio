import 'package:flutter/material.dart';

class DeviceUtils {
  static bool isDesktop(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 600 && width < 1024;
  }

  static bool isMobile(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width < 600;
  }
}
