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
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(buttonText),

      child: Container(
        height: (MediaQuery.of(context).size.width - 30 - 24) / 4,
        width: (MediaQuery.of(context).size.width - 30 - 24) / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
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



// class CalcButton extends StatefulWidget {
//   const CalcButton({super.key ,    required this.buttonText,
//     required this.buttonColour,
//     required this.onPressed,});



//     final String buttonText;
//   final Color buttonColour;
//   final void Function(String) onPressed;

//   @override
//   State<CalcButton> createState() => _CalcButtonState();
// }

// class _CalcButtonState extends State<CalcButton> {

  
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
        
//       },
      
//       child: Container(
//         height: (MediaQuery.of(context).size.width - 30 - 24) / 4,
//         width: (MediaQuery.of(context).size.width - 30 - 24) / 4,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(70),
//           color: widget.buttonColour,
//         ),
//         child: Center(
//           child: Text(
//             widget.buttonText,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 40,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }