import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/expenses_model.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/expenses_item.dart';

class AllExpensesList extends StatefulWidget {
  const AllExpensesList({
    super.key,
  });

  @override
  State<AllExpensesList> createState() => _AllExpensesListState();
}

class _AllExpensesListState extends State<AllExpensesList> {
  int selectedIndex = 0;
  final List<ExpensesModel> expensesModels = [
    ExpensesModel(
        title: "Balance",
        date: "April 2022",
        balance: r"$20,129",
        icon: Assets.assetsImagesMoneys),
    ExpensesModel(
        title: "Income",
        date: "April 2022",
        balance: r"$20,129",
        icon: Assets.assetsImagesCardReceive),
    ExpensesModel(
        title: "EXpenses",
        date: "April 2022",
        balance: r"$20,129",
        icon: Assets.assetsImagesCardSend),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        children: expensesModels.asMap().entries.map((entry) {
      return Expanded(
        child: InkWell(
          onTap: () {
            setState(() {
              selectedIndex = entry.key;
            });
          },
          child: ExpensesItem(
              padding: entry.key != expensesModels.length ? 12 : 0,
              active: entry.key == selectedIndex,
              expensesModel: expensesModels[entry.key]),
        ),
      );
    }).toList());
  }
}
