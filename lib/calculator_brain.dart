import 'dart:math';

class CalculatorBrain {
  double? _firstNum;
  String? _operator;
  String _display = "0";
  bool _clear = false;

  String get display => _display;

  void input(String value) {
    if (value == "AC") {
      _display = "0";
      _firstNum = null;
      _operator = null;
      _clear = false;
    } else if (value == "+" || value == "-" || value == "x" || value == "/") {
      _firstNum = double.tryParse(_display);
      _operator = value;
      _clear = true;
    } else if (value == "=") {
      double? secondNum = double.tryParse(_display);
      if (_firstNum != null && _operator != null && secondNum != null) {
        switch (_operator) {
          case "+":
            _display = (_firstNum! + secondNum).toString();
            break;
          case "-":
            _display = (_firstNum! - secondNum).toString();
            break;
          case "x":
            _display = (_firstNum! * secondNum).toString();
            break;
          case "/":
            _display = (secondNum != 0)
                ? (_firstNum! / secondNum).toString()
                : "Error";
            break;
        }
      }
      _operator = null;
      _firstNum = null;
      _clear = true;
    } else {
      // Digits and dot
      if (_clear) {
        _display = (value == ".") ? "0." : value;
        _clear = false;
      } else {
        if (_display == "0" && value != ".") {
          _display = value;
        } else {
          if (value == "." && _display.contains(".")) return;
          _display += value;
        }
      }
    }
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
