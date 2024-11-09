import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/user_info_model.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/categories_section.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/setting_section.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/user_info.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 28),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: UserInfo(
              userInfoModel: UserInfoModel(
                  image: Assets.assetsImagesFrame,
                  subtitle: "demo@gmail.com",
                  title: "Lekan Okeowo"),
            )),
            const CategoriesSection(),
            const SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: false,
              child: SettingSection(),
            )
          ],
        ),
      ),
    );
  }
}
