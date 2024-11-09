import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/category_models.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/drawer_item.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  final List<CategoryModel> models = [
    CategoryModel(text: 'Dashboard', image: Assets.assetsImagesCategory2),
    CategoryModel(
        text: 'My Transaction', image: Assets.assetsImagesMyTransaction),
    CategoryModel(text: 'Statistics', image: Assets.assetsImagesStatistics),
    CategoryModel(text: 'Wallet Account', image: Assets.assetsImagesWallet2),
    CategoryModel(
        text: 'My Investments', image: Assets.assetsImagesInvestments),
  ];
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: models.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: InkWell(
                onTap: () {
                  if (selectedCategory != index) {
                    setState(() {
                      selectedCategory = index;
                    });
                  }
                },
                child: DrawerItem(
                  isActive: selectedCategory == index,
                  categoryModel: models[index],
                ),
              ),
            ));
  }
}
