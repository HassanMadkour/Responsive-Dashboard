import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/size_config.dart';

abstract class ResponsiveText {
  static double responsiveText(
      {bool dependOnWidth = true,
      required double fontSize,
      required BuildContext context}) {
    late double scaleFactor;

    if (dependOnWidth) {
      scaleFactor = ResponsiveText._getScaleFactorWidth(context);
    } else {
      scaleFactor = ResponsiveText._getScaleFactorHeight(context);
    }
    double responsiveText = fontSize * scaleFactor;
    double lowerLimit = fontSize * .75;
    double upperLimit = fontSize * 1.2;
    return responsiveText.clamp(lowerLimit, upperLimit);
  }

  static double _getScaleFactorWidth(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < SizeConfig.maxPhoneWidth) {
      return width / SizeConfig.midPhoneWidth;
    } else if (width < SizeConfig.maxTabletWidth) {
      return width / SizeConfig.midTabletWidth;
    } else if (width < SizeConfig.maxNormalDesktopWidth) {
      return width / SizeConfig.midNormalDesktopWidth;
    } else {
      return width / SizeConfig.midLargeDesktopWidth;
    }
  }

  static double _getScaleFactorHeight(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return height / 1024;
  }
}
