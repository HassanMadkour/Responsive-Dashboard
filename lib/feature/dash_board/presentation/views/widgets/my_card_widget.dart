import 'package:flutter/material.dart';

import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/cards_list.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/custom_container.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/transaction_history_widget.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Card",
            style: AppFontStyle.semiBold20(context),
          ),
          const SizedBox(height: 20),
          const CardsList(),
          const Divider(height: 40),
          const TransactionHistoryWidget()
        ],
      ),
    );
  }
}
