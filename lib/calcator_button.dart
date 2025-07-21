import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    required this.buttonText,
    required this.buttonColour,
    required this.onPressed,
  });

  final String buttonText;
  final Color buttonColour;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      //  () {
      //   print("i press");
      // },
      child: Container(
        height: (MediaQuery.of(context).size.width - 30 - 24) / 4,
        width: (MediaQuery.of(context).size.width - 30 - 24) / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: buttonColour,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
