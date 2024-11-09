import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/app_images.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 412 / 210,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.assetsImagesContainerBack)),
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Flexible(child: SizedBox(height: 20)),
            Padding(
              padding:
                  const EdgeInsets.only(right: 28, left: 8, top: 4, bottom: 4),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name card",
                          style: AppFontStyle.regular16(context)
                              .copyWith(color: Colors.white)),
                      Text("Syah Bandi",
                          style: AppFontStyle.medium20(context)
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset(Assets.assetsImagesGallery)
                ],
              ),
            ),
            const Expanded(child: SizedBox(height: 20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text("0918 8124 0042 8129",
                      style: AppFontStyle.semiBold24(context)
                          .copyWith(color: Colors.white)),
                ),
                Text("12/20 - 124",
                    style: AppFontStyle.regular16(context)
                        .copyWith(color: Colors.white)),
              ],
            ),
            const Flexible(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
