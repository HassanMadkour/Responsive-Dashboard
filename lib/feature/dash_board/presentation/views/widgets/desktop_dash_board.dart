import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/body_view.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/drawer_widget.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/my_card_and_income_widget.dart';

class DesktopDashBoard extends StatelessWidget {
  const DesktopDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 1, child: DrawerWidget()),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Expanded(flex: 5, child: BodyView()),
                    SizedBox(width: 20),
                    Expanded(flex: 3, child: MyCardAndIncomeWidget()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
