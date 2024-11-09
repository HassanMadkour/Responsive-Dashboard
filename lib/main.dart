import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/dash_board_view.dart';

int main() {
  runApp(DevicePreview(builder: (context) => const MyDashBoard()));
  return 0;
}

class MyDashBoard extends StatelessWidget {
  const MyDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).width.toString());
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}
