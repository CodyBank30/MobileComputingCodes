// lib/widgets/calculator_display.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calc_controller.dart';

class CalculatorDisplay extends StatelessWidget {
  final CalculatorController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            controller.display.value,
            style: TextStyle(fontSize: 36),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            controller.result.value,
            style: TextStyle(fontSize: 48, color: Colors.blueAccent),
          ),
        ),
      ],
    ));
  }
}
