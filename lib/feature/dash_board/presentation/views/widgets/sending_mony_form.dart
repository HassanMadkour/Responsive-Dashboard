import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/custom_text_style.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/field_item_widget.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/row_field.dart';

class SendingMonyForm extends StatelessWidget {
  const SendingMonyForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          const RowField(
              childOne: FieldItemWidget(
                  title: "Customer name", hint: "Type Customer name"),
              childTwo: FieldItemWidget(
                  title: "Customer Email", hint: "Type Customer email")),
          const RowField(
              childOne: FieldItemWidget(
                  title: "Item name", hint: "Type Customer name"),
              childTwo: FieldItemWidget(
                title: "Item mount",
                hint: "USD",
              )),
          RowField(
              childOne: Center(
                child: Text("Add More details",
                    style: AppFontStyle.semiBold16(context)
                        .copyWith(color: AppColors.blue)),
              ),
              childTwo: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColors.blue,
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Send Money",
                    style: AppFontStyle.semiBold18(context)
                        .copyWith(color: Colors.white),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
