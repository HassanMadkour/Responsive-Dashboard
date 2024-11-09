import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/all_expenses_list.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/custom_container.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(
            title: "All Expenses",
          ),
          SizedBox(height: 16),
          AllExpensesList()
        ],
      ),
    );
  }
}
