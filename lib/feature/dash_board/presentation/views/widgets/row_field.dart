import 'package:flutter/material.dart';

class RowField extends StatelessWidget {
  const RowField({
    super.key,
    required this.childOne,
    required this.childTwo,
  });

  final Widget childOne, childTwo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(child: childOne),
          const SizedBox(width: 16),
          Expanded(child: childTwo),
        ],
      ),
    );
  }
}
