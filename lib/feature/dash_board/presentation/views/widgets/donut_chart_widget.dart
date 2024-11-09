import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';

class DonutChartWidget extends StatelessWidget {
  const DonutChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Donut Chart
        SizedBox(
          width: 110, // Set size for the chart
          height: 110,
          child: PieChart(
            PieChartData(
              sections: _buildPieChartSections(),
              centerSpaceRadius: 40, // Adjust for the donut hole size
              sectionsSpace: 3,
            ),
          ),
        ),
        const SizedBox(width: 20),

        // Legend
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLegendItem(
                  AppColors.blueTwo, "Design service", "40%", context),
              _buildLegendItem(
                  AppColors.blue, "Design product", "25%", context),
              _buildLegendItem(
                  AppColors.darkBlue, "Product royalty", "20%", context),
              _buildLegendItem(AppColors.gray, "Other", "22%", context),
            ],
          ),
        ),
      ],
    );
  }

  // Function to build each section of the pie chart
  List<PieChartSectionData> _buildPieChartSections() {
    return [
      PieChartSectionData(
        color: AppColors.blueTwo,
        value: 40,
        radius: 25,
        title: '',
      ),
      PieChartSectionData(
        color: AppColors.blue,
        value: 25,
        radius: 25,
        title: '',
      ),
      PieChartSectionData(
        color: AppColors.darkBlue,
        value: 20,
        radius: 25,
        title: '',
      ),
      PieChartSectionData(
        color: AppColors.gray,
        value: 22,
        radius: 25,
        title: '',
      ),
    ].reversed.toList();
  }

  // Function to build legend items
  Widget _buildLegendItem(
      Color color, String text, String percentage, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: color,
          ),
          const SizedBox(width: 8),
          Text(text, style: AppFontStyle.regular16(context)),
          const Spacer(),
          Text(percentage,
              style: AppFontStyle.medium16(context).copyWith(
                color: AppColors.blue,
              )),
        ],
      ),
    );
  }
}
