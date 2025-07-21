import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    required this.buttonText,
    required this.buttonColour,
  });

  final String buttonText;
  final Color buttonColour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("i press");
      },
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: buttonColour,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
