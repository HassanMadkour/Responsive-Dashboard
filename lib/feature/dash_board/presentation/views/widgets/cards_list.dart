import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashborad/core/utils/app_colors.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/card_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CardsList extends StatefulWidget {
  const CardsList({
    super.key,
  });

  @override
  State<CardsList> createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          currentPage = pageController.page!.round();
        });
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandablePageView(
            controller: pageController,
            children: List.generate(3, (index) => const CardItemWidget())),
        const SizedBox(height: 20),
        AnimatedSmoothIndicator(
          activeIndex: currentPage,
          count: 3,
          effect: const ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              dotColor: AppColors.gray,
              activeDotColor: AppColors.blue),
        ),
      ],
    );
  }
}
