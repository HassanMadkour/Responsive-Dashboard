import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/transaction_model.dart';

class TransactionItemWidget extends StatelessWidget {
  const TransactionItemWidget({
    super.key,
    required this.transactionModel,
    required this.isRed,
  });
  final TransactionModel transactionModel;
  final bool isRed;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.opacityWhite,
      elevation: 0,
      child: ListTile(
        title: Text(transactionModel.title,
            style: AppFontStyle.semiBold16(context)),
        subtitle: Text(transactionModel.subtitle,
            style: AppFontStyle.regular16(context)
                .copyWith(color: AppColors.gray)),
        trailing: Text(transactionModel.trailing,
            style: AppFontStyle.semiBold20(context)
                .copyWith(color: isRed ? AppColors.orange : AppColors.green)),
      ),
    );
  }
}
