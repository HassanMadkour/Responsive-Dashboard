import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/expenses_model.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/in_active_expenses_item.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/active_expenses_item.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
      {super.key,
      required this.active,
      required this.expensesModel,
      required this.padding});
  final bool active;
  final ExpensesModel expensesModel;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: padding),
        child: active
            ? ActiveExpensesItem(expensesModel: expensesModel)
            : InActiveExpensesItem(expensesModel: expensesModel));
  }
}
