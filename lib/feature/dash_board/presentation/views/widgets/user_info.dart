import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/feature/dash_board/data/models/user_info_model.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      color: AppColors.opacityWhite,
      child: Center(
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.title,
              overflow: TextOverflow.ellipsis,
              style: AppFontStyle.semiBold16(context)),
          subtitle: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(userInfoModel.subtitle,
                style: AppFontStyle.regular12(context)),
          ),
        ),
      ),
    );
  }
}
