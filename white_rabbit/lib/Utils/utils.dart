

import 'package:flutter/material.dart';

class Utils {
  
  static double actualHeight(BuildContext context) {
    double originalHeight = MediaQuery.of(context).size.height;
    originalHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);
    return originalHeight;
  }

  static double screenWidth(BuildContext context) {
    double bodywidth = 0;
    bodywidth = MediaQuery.of(context).size.width;
    return bodywidth;
  }

  static double bodyHeight(BuildContext context) {
    double bodyHeight = 0;
    bodyHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom +
            Utils.appBarHeight(context));
    return bodyHeight;
  }

  static double topPadding(BuildContext context) {
    return MediaQuery.of(context).padding.top;
    ;
  }

  static double bottomPadding(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double appBarHeight(BuildContext context) {
    return AppBar().preferredSize.height;
  }
}
