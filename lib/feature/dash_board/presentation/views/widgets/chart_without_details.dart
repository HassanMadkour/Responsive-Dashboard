import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/core/utils/responsive_text.dart';

class ChartWithoutDetails extends StatefulWidget {
  const ChartWithoutDetails({super.key});

  @override
  State<ChartWithoutDetails> createState() => _ChartWithoutDetailsState();
}

class _ChartWithoutDetailsState extends State<ChartWithoutDetails> {
  final List<String> titles = const [
    "Design service",
    "Design product",
    "Product royalty",
    "Others",
    " "
  ];
  int selectedSection = 4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 120, // Set size for the chart
          height: 120,
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  enabled: true,
                  touchCallback: (p0, pieTouchResponse) {
                    setState(() {
                      selectedSection = pieTouchResponse!
                              .touchedSection?.touchedSectionIndex ??
                          0;
                    });
                  },
                ),
                sections: _buildPieChartSections(context),
                centerSpaceRadius: 40, // Adjust for the donut hole size
                sectionsSpace: 1,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            titles[selectedSection == -1 ? 4 : selectedSection],
            style: AppFontStyle.regular16(context),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  // Function to build each section of the pie chart
  List<PieChartSectionData> _buildPieChartSections(BuildContext context) {
    return [
      PieChartSectionData(
        titleStyle: TextStyle(
            color: Colors.white,
            fontSize:
                ResponsiveText.responsiveText(fontSize: 14, context: context)),
        color: AppColors.blueTwo,
        value: 40,
        radius: selectedSection == 3 ? 30 : 25,
        title: '40%',
      ),
      PieChartSectionData(
        titleStyle: TextStyle(
            color: Colors.white,
            fontSize:
                ResponsiveText.responsiveText(fontSize: 14, context: context)),
        color: AppColors.blue,
        value: 25,
        radius: selectedSection == 2 ? 30 : 25,
        title: '25%',
      ),
      PieChartSectionData(
        titleStyle: TextStyle(
            color: Colors.white,
            fontSize:
                ResponsiveText.responsiveText(fontSize: 14, context: context)),
        color: AppColors.darkBlue,
        value: 20,
        radius: selectedSection == 1 ? 30 : 25,
        title: '20%',
      ),
      PieChartSectionData(
        titleStyle: TextStyle(
            color: Colors.white,
            fontSize:
                ResponsiveText.responsiveText(fontSize: 14, context: context)),
        color: AppColors.gray,
        value: 22,
        radius: selectedSection == 0 ? 30 : 25,
        title: '22%',
      ),
    ].reversed.toList();
  }
}
