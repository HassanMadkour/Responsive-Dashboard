import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/drawer_widget.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/mobile_dash_board.dart';

class TabletDashBoard extends StatelessWidget {
  const TabletDashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: DrawerWidget()),
        SizedBox(width: 20),
        Expanded(flex: 5, child: MobileDashBoard()),
        SizedBox(width: 10),
      ],
    );
  }
}
