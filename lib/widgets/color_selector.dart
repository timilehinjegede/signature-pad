import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    super.key,
    required this.color,
    required this.isSelected,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: color,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
