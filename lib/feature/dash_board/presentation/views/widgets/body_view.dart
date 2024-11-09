import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/all_expenses_widget.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/quick_invoice.dart';

class BodyView extends StatelessWidget {
  const BodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      AllExpensesWidget(),
      SizedBox(height: 24),
      QuickInvoice(),
      SizedBox(height: 24),
    ]);
  }
}
