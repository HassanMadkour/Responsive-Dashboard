import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/adaptive_layout.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/desktop_dash_board.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/mobile_dash_board.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/tablet_dash_board.dart';

class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const MobileDashBoard(),
        tabletLayout: (context) => const TabletDashBoard(),
        desktopLayout: (context) => const DesktopDashBoard());
  }
}
