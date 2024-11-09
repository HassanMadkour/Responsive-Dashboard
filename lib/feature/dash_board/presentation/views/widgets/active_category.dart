import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/category_models.dart';

class ActiveCategory extends StatelessWidget {
  const ActiveCategory({super.key, required this.categoryModel});

  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(categoryModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          categoryModel.text,
          style: AppFontStyle.bold16(context),
        ),
      ),
      trailing: const VerticalDivider(
        thickness: 4,
        color: AppColors.blue,
      ),
    );
  }
}
