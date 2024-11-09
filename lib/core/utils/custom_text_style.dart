import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/responsive_text.dart';

abstract class AppFontStyle {
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 16, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: AppColors.darkBlue,
    );
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 14, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: AppColors.gray,
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 12, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: AppColors.gray,
    );
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 16, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: AppColors.darkBlue,
    );
  }

  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 20, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 16, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColors.darkBlue,
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 20, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColors.darkBlue,
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 24, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColors.blue,
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 18, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColors.blue,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      fontSize: ResponsiveText.responsiveText(fontSize: 16, context: context),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: AppColors.blue,
    );
  }
}
