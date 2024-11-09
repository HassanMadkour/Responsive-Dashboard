import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/user_info_model.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/user_info.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({
    super.key,
  });
  static final List<UserInfoModel> userInfoModels = [
    UserInfoModel(
        image: Assets.assetsImagesFrame,
        subtitle: "HassanMadkour@gmail.com",
        title: "Hassan Madkour"),
    UserInfoModel(
        image: Assets.assetsImagesFrame,
        subtitle: "HassanMadkour@gmail.com",
        title: "Hassan Madkour"),
    UserInfoModel(
        image: Assets.assetsImagesFrame,
        subtitle: "HassanMadkour@gmail.com",
        title: "Hassan Madkour"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppFontStyle.medium16(context)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: userInfoModels
                .map((e) => Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: IntrinsicWidth(child: UserInfo(userInfoModel: e)),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
