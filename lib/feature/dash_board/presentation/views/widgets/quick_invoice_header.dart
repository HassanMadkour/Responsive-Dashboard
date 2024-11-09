import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppFontStyle.semiBold20(context),
        ),
        Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.opacityWhite),
            child: const Icon(
              size: 18,
              Icons.add,
              color: AppColors.blue,
            ))
      ],
    );
  }
}
