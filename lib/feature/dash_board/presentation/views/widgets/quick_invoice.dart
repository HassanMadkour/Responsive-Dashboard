import 'package:flutter/material.dart';

import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/custom_container.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/latest_transaction_widget.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/quick_invoice_header.dart';
import 'package:responsive_dashborad/feature/dash_board/presentation/views/widgets/sending_mony_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 16),
          LatestTransactionWidget(),
          SizedBox(height: 20),
          Divider(),
          SendingMonyForm(),
        ],
      ),
    );
  }
}
