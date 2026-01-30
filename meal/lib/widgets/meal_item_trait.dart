import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  const MealItemTrait({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          icon,
          size: 19,
          color: Colors.white60,
        ),
        const SizedBox(width:5),
        Text(
          label,
          style: TextStyle(
            color: Colors.white70
          ),
        )
      ]
    );
  }
}
