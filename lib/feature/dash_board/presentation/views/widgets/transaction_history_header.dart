import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction history",
          style: AppFontStyle.semiBold20(context),
        ),
        Text(
          "See all",
          style: AppFontStyle.medium16(context).copyWith(color: AppColors.blue),
        )
      ],
    );
  }
}
