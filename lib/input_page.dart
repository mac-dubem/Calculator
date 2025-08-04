import 'package:flutter/material.dart';
import 'calcator_button.dart';
import 'package:calculator/constants.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // String displayText = "0";

  CalculatorBrain brain = CalculatorBrain();

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CALCULATOR",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Text(
                      brain.display,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              // GridView.count(
              //   crossAxisCount: 4,
              //   mainAxisSpacing: 12,
              //   crossAxisSpacing: 12,
              //   children: [
              //     CalcButton(buttonText: "AC", buttonColour: Colors.grey),
              //     CalcButton(buttonText: "+/-", buttonColour: Colors.grey),
              //     CalcButton(buttonText: "%", buttonColour: Colors.grey),
              //     CalcButton(buttonText: "/", buttonColour: Colors.orange),
              //     CalcButton(buttonText: "7", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "8", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "9", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "x", buttonColour: Colors.orange),
              //     CalcButton(buttonText: "4", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "5", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "6", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "-", buttonColour: Colors.orange),
              //     CalcButton(buttonText: "1", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "2", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "3", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "+", buttonColour: Colors.orange),
              //     CalcButton(buttonText: "0", buttonColour: Colors.white24),
              //     CalcButton(buttonText: ".", buttonColour: Colors.white24),
              //     CalcButton(buttonText: "=", buttonColour: Colors.orange),
              //   ],
              // ),
              Row(
                spacing: 8,
                children: [
                  CalcButton(
                    buttonText: "AC",
                    buttonColour: buttonColor1,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });

                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "+/-",
                    buttonColour: buttonColor1,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "%",
                    buttonColour: buttonColor1,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "/",
                    buttonColour: Colors.orange,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                      });
                      print(buttontext);
                    },
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  CalcButton(
                    buttonText: "7",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),

                  CalcButton(
                    buttonText: "8",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "9",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "x",
                    buttonColour: Colors.orange,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input("*");
                      });
                      print(buttontext);
                    },
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  CalcButton(
                    buttonText: "4",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "5",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "6",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "-",
                    buttonColour: Colors.orange,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                      });
                      print(buttontext);
                    },
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  CalcButton(
                    buttonText: "1",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "2",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });

                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "3",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "+",
                    buttonColour: Colors.orange,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                      });
                      print(buttontext);
                    },
                  ),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  CalcButton(
                    buttonText: "?",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "0",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                        // displayText = brain.display;
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: ".",
                    buttonColour: buttonColor2,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                      });
                      print(buttontext);
                    },
                  ),
                  CalcButton(
                    buttonText: "=",
                    buttonColour: Colors.orange,
                    onPressed: (buttontext) {
                      setState(() {
                        brain.input(buttontext);
                      });
                      print(buttontext);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
