import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';

class FieldItemWidget extends StatelessWidget {
  const FieldItemWidget({
    super.key,
    required this.title,
    required this.hint,
  });
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFontStyle.medium16(context),
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              fillColor: AppColors.opacityWhite,
              hintText: hint,
              hintStyle: AppFontStyle.regular16(context)
                  .copyWith(color: const Color(0xffAAAAAA))),
        )
      ],
    );
  }
}
