// lib/controller/calculator_controller.dart
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var display = ''.obs;
  var result = ''.obs;

  // Append value to the display
  void appendValue(String value) {
    // Prevent multiple consecutive operators
    if (_isOperator(value) &&
        display.value.isNotEmpty &&
        _isOperator(display.value[display.value.length - 1])) {
      return; // Do nothing if the last character is already an operator
    }
    display.value += value;
  }

  // Perform the calculation manually
  void calculate() {
    try {
      // If the expression ends with an operator, remove it before evaluating
      String expression = display.value;
      if (_isOperator(expression[expression.length - 1])) {
        expression = expression.substring(0, expression.length - 1);
      }

      // Evaluate the cleaned expression
      final evaluatedResult = _evaluateExpression(expression);
      result.value = evaluatedResult.toString();
    } catch (e) {
      result.value = 'Error';
    }
  }

  // Clear the display and result
  void clear() {
    display.value = '';
    result.value = '';
  }

  // Evaluate the expression manually
  double _evaluateExpression(String expression) {
    // Split the expression by operator precedence
    List<String> tokens = expression.split(RegExp(r'([+\-*/])'));
    List<String> operators = RegExp(r'[+\-*/]')
        .allMatches(expression)
        .map((m) => m.group(0)!)
        .toList();

    double result = double.parse(tokens[0]);

    for (int i = 1; i < tokens.length; i++) {
      double value = double.parse(tokens[i]);
      String operator = operators[i - 1];

      if (operator == '+') {
        result += value;
      } else if (operator == '-') {
        result -= value;
      } else if (operator == '*') {
        result *= value;
      } else if (operator == '/') {
        if (value != 0) {
          result /= value;
        } else {
          throw Exception("Division by zero");
        }
      }
    }

    return result;
  }

  // Check if the given string is an operator
  bool _isOperator(String value) {
    return value == '+' || value == '-' || value == '*' || value == '/';
  }
}
