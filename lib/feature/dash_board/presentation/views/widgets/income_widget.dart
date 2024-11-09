import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/size_config.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/chart_without_details.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/custom_container.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/donut_chart_widget.dart';

class IncomeWidget extends StatelessWidget {
  const IncomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Column(
      children: [
        const AllExpensesHeader(
          title: "Income",
        ),
        const SizedBox(height: 16),
        cetChart(context)
      ],
    ));
  }

  Widget cetChart(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1150 &&
              MediaQuery.sizeOf(context).width > SizeConfig.maxTabletWidth
          ? const ChartWithoutDetails()
          : const DonutChartWidget();
}
