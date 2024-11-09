import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/category_models.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/in_active_category.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        InActiveCategory(
            categoryModel: CategoryModel(
                image: Assets.assetsImagesSetting2, text: "Setting")),
        InActiveCategory(
            categoryModel: CategoryModel(
                image: Assets.assetsImagesLogout, text: "Logout account")),
        const SizedBox(height: 20)
      ],
    );
  }
}
