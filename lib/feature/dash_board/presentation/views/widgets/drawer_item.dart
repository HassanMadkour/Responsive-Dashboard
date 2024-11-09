import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/category_models.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/active_category.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/in_active_category.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isActive,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveCategory(categoryModel: categoryModel)
        : InActiveCategory(categoryModel: categoryModel);
  }
}
