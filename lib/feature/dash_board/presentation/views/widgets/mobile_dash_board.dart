import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/body_view.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/my_card_and_income_widget.dart';

class MobileDashBoard extends StatelessWidget {
  const MobileDashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(height: 20),
            BodyView(),
            MyCardAndIncomeWidget(),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
