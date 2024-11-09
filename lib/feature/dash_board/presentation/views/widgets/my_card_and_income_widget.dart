import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/income_widget.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/my_card_widget.dart';

class MyCardAndIncomeWidget extends StatelessWidget {
  const MyCardAndIncomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardWidget(),
        SizedBox(height: 24),
        IncomeWidget(),
      ],
    );
  }
}
