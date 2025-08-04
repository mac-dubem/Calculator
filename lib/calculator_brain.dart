import 'package:math_expressions/math_expressions.dart';

class CalculatorBrain {
  // double? _firstNum;
  // String? _operator;
  // bool _clear = false;

  String _calculate = "";
  String _display = "0";

  String get display => _display;

  void input(String value) {
    if (value == "AC") {
      _calculate = "";
      _display = "0";
    } else if (value == "=") {
      try {
        Parser p = Parser();
        ContextModel cm = ContextModel();

        // Replace symbols for math_expressions to understand
        String parsedExpression = _calculate
            // .replaceAll("x", "*")
            .replaceAll("%", "/100");
        Expression exp = p.parse(parsedExpression);
        double result = exp.evaluate(EvaluationType.REAL, cm);

        // Remove .0 if result is a whole number
        if (result == result.toInt()) {
          _calculate = result.toInt().toString();
        } else {
          _calculate = result.toString();
        }
        _display = _calculate;
      } catch (e) {
        _display = "Error";
        _calculate = "";
      }

      // =========== POSITIVE / NEGATIVE SIGN =========
    } else if (value == "+/-") {
      final regex = RegExp(
        r'([\-]?\d+\.?\d*)$',
      ); //This line sets up a regular expression to find the last number typed
      final match = regex.firstMatch(
        _calculate,
      ); //This checks if find any number at the end of what user typed

      if (match != null) {
        String number = match.group(0)!; // This grab that number
        String toggled =
            number.startsWith("-") // this flip the number
            ? number.substring(1) // if it already starts with - take the - off
            : '-$number'; // If it dosen't have - put on one
        _calculate = _calculate.replaceRange(match.start, match.end, toggled);
        _display = _calculate;
      }

      // ================== DECIMAL POINT ======================
    } else if (value == ".") {
      final parts = _calculate.split(RegExp(r'[+\-x*/]'));
      final lastNumber = parts.isNotEmpty ? parts.last : "";

      // Prevent multiple dots in the SAME number
      if (lastNumber.contains(".")) return;

      // If starting a new number after operator or empty
      if (lastNumber.isEmpty) {
        _calculate += "0";
      } else {
        _calculate += ".";
      }
      _display = _calculate;
    } else {
      _calculate += value;
      _display = _calculate;
    }



    // if (value == "AC") {
    //   _display = "0";
    //   _firstNum = null;
    //   _operator = null;
    //   _clear = false;
    // } else if (value == "+" || value == "-" || value == "x" || value == "/") {
    //   _firstNum = double.tryParse(_display);
    //   _operator = value;
    //   _clear = true;
    // } else if (value == "=") {
    //   double? secondOperand = double.tryParse(_display);
    //   if (_firstNum != null && _operator != null && secondOperand != null) {
    //     switch (_operator) {
    //       case "+":
    //         _display = (_firstNum! + secondOperand).toString();
    //         break;
    //       case "-":
    //         _display = (_firstNum! - secondOperand).toString();
    //         break;
    //       case "x":
    //         _display = (_firstNum! * secondOperand).toString();
    //         break;
    //       case "/":
    //         _display = (secondOperand != 0)
    //             ? (_firstNum! / secondOperand).toString()
    //             : "Error";
    //         break;
    //     }
    //   }
    //   _operator = null;
    //   _firstNum = null;
    //   _clear = true;
    // } else {
    //   // Digits and dot
    //   if (_clear) {
    //     _display = (value == ".") ? "0." : value;
    //     _clear = false;
    //   } else {
    //     if (_display == "0" && value != ".") {
    //       _display = value;
    //     } else {
    //       if (value == "." && _display.contains(".")) return;
    //       _display += value;
    //     }
    //   }
    // }
  }
}
