// lib/widgets/calculator_button.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calc_controller.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final Function()? onTap;

  CalculatorButton({required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    final CalculatorController controller = Get.find();

    return GestureDetector(
      onTap: onTap ?? () => controller.appendValue(label),
      child: Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(label, style: TextStyle(fontSize: 24, color: Colors.white)),
        ),
      ),
    );
  }
}
