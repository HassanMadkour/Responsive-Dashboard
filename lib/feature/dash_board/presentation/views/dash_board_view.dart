import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/core/utils/size_config.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/dash_board_view_body.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/drawer_widget.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.maxPhoneWidth
          ? AppBar(
              backgroundColor: AppColors.darkBlue,
              leading: IconButton(
                  onPressed: () {
                    setState(() {
                      scaffoldKey.currentState!.openDrawer();
                    });
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  )))
          : null,
      body: const DashBoardViewBody(),
    );
  }
}
