import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bmi_controller.dart';

class BMIScreen extends StatelessWidget {
  final BMIController bmiController = Get.put(BMIController());

  BMIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Enter height in inches or feet",
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            // Weight input
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter weight (kg)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                bmiController.weightKg.value = double.tryParse(value) ?? 0.0;
              },
            ),
            const SizedBox(height: 16),

            // Feet input
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter height (feet)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                bmiController.feet.value = double.tryParse(value) ?? 0.0;
              },
            ),
            const SizedBox(height: 16),

            // Inches input
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter height (inches)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                bmiController.inches.value = double.tryParse(value) ?? 0.0;
              },
            ),
            const SizedBox(height: 16),

            // Calculate button
            ElevatedButton(
              onPressed: () {
                bmiController.calculateBMI();
              },
              child: const Text('Calculate BMI'),
            ),
            SizedBox(height: 16),

            // Display BMI result
            Obx(() => Text(
                  'Your BMI: ${bmiController.bmi.value.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20),
                )),

            // Display BMI status
            Obx(() => Text(
                  'Status: ${bmiController.status.value}',
                  style:
                  const TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
