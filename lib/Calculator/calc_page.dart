// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'calc_button.dart';
import 'calc_controller.dart';
import 'calc_display.dart';


class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CalculatorController()); // Initialize the controller

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Calculator')),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _buildPortraitLayout()
                : _buildLandscapeLayout();
          },
        ),
      ),
    );
  }

  // Portrait layout
  Widget _buildPortraitLayout() {
    return Column(
      children: [
        Expanded(child: CalculatorDisplay()),
        _buildButtonGrid(),
      ],
    );
  }

  // Landscape layout
  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(child: CalculatorDisplay()),
        _buildButtonGrid(),
      ],
    );
  }

  // Button grid for calculator
  Widget _buildButtonGrid() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      children: [
        CalculatorButton(label: '7'),
        CalculatorButton(label: '8'),
        CalculatorButton(label: '9'),
        CalculatorButton(label: '/'),
        CalculatorButton(label: '4'),
        CalculatorButton(label: '5'),
        CalculatorButton(label: '6'),
        CalculatorButton(label: '*'),
        CalculatorButton(label: '1'),
        CalculatorButton(label: '2'),
        CalculatorButton(label: '3'),
        CalculatorButton(label: '-'),
        CalculatorButton(label: '0'),
        CalculatorButton(label: 'C', onTap: Get.find<CalculatorController>().clear),
        CalculatorButton(label: '=', onTap: Get.find<CalculatorController>().calculate),
        CalculatorButton(label: '+'),
      ],
    );
  }
}
