import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/expenses_model.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.expensesModel,
  });
  final ExpensesModel expensesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray.withOpacity(.2)),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Flexible(
              child: SizedBox(
                height: 60,
                width: 60,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.opacityWhite),
                  child: Center(
                    child: SvgPicture.asset(
                      Assets.assetsImagesMoneys,
                      colorFilter: const ColorFilter.mode(
                          AppColors.blue, BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            ),
            const Flexible(
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.darkBlue,
              ),
            )
          ]),
          const SizedBox(height: 34),
          FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(expensesModel.title,
                  style: AppFontStyle.semiBold16(context))),
          const SizedBox(height: 8),
          FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(expensesModel.date,
                  style: AppFontStyle.regular14(context))),
          const SizedBox(height: 16),
          FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(expensesModel.balance,
                  style: AppFontStyle.semiBold24(context))),
        ],
      ),
    );
  }
}
