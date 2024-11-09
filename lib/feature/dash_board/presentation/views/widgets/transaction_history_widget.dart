import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/transaction_model.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/transaction_history_header.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/transaction_item_widget.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({
    super.key,
  });
  static List<TransactionModel> transactionModels = [
    TransactionModel(
        title: "Cash Withdrawal",
        subtitle: "13 Apr, 2022",
        trailing: r"$20,129"),
    TransactionModel(
        title: "Landing Page project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        trailing: r"$2,000"),
    TransactionModel(
        title: "Juni Mobile App project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        trailing: r"$20,129"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppFontStyle.medium16(context).copyWith(color: AppColors.gray),
        ),
        const SizedBox(height: 16),
        Column(
            children: transactionModels
                .asMap()
                .entries
                .map((e) => TransactionItemWidget(
                    transactionModel: e.value, isRed: e.key == 0))
                .toList()),
      ],
    );
  }
}
