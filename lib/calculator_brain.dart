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
        String parsedExpression = _calculate
            // .replaceAll("x", "*")
            .replaceAll("%", "/100");
        Expression exp = p.parse(parsedExpression);
        _calculate = exp.evaluate(EvaluationType.REAL, cm).toString();
        _display = _calculate;
      } catch (e) {
        _display = "Error";
        _calculate = "";
      }
    } else if (value == "-/+") {
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
      // } else if (value == ".") {
      //   final parts =
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

// class CalculatorBrain {
//   double? firstNum = 0;
//   double? secondNum = 0;
//   String? operator;
//   String? displayText;
//   bool waitForSecondNum = false;

//   void _clear() {
//     firstNum = null;
//     secondNum = null;
//     displayText = "0";
//     operator = null;
//     waitForSecondNum = false;
//   }

//   void input(String value) {
//     if (value == "AC") {
//       _clear();
//     } else if (["+", "-", "x", "/"].contains(value)) {
//       firstNum = double.tryParse(displayText ?? "0");
//       operator = value;
//       waitForSecondNum = true;
//       displayText = "0";
//     } else if (value == "=") {
//       secondNum = double.parse(displayText ?? "0");
//       _calculate();
//       operator = null;
//       waitForSecondNum = false;
//       // } else if (value == ".") {
//       //   if (_displayText.contains(".")) {
//       //     _displayText += ".";
//       //   }
//       // } else if (value == "+/-") {
//       //   if (_displayText != "0") {
//       //     if (_displayText.startsWith("-")) {
//       //       _displayText = _displayText.substring(1);
//       //     } else {
//       //       _displayText = "-$_displayText";
//       //     }
//       //   }
//     } else if (value == "%") {
//       double num = double.tryParse(displayText ?? "0") ?? 0;
//       displayText = (num / 100).toString();
//     } else {
//       // Number pressed
//       if (displayText == "0" || waitForSecondNum) {
//         displayText = value;
//         waitForSecondNum = false;
//       } else {
//         displayText = (displayText ?? "0") + value;
//       }
//     }
//   }

//   void _calculate() {
//     double result = 0;
//     switch (operator) {
//       case "+":
//         result = (firstNum ?? 0) + (secondNum ?? 0);
//         break;
//       case "-":
//         result = (firstNum ?? 0) - (secondNum ?? 0);
//         break;
//       case "x":
//         result = (firstNum ?? 0) * (secondNum ?? 0);
//         break;
//       case "/":
//         result = (secondNum != 0)
//             ? (firstNum ?? 0) / (secondNum ?? 0)
//             : double.nan;
//         break;
//       default:
//         result = double.tryParse(displayText ?? "0") ?? 0;
//     }
//     displayText = result.toString();
//   }
// }
