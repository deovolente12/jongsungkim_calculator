import 'package:flutter/material.dart';
import 'dart:math';
import 'distance_converter.dart';

class AddTwoNumbers extends StatefulWidget {
  const AddTwoNumbers({Key? key}) : super(key: key);

  @override
  AddTwoNumbersState createState() => AddTwoNumbersState();
}

class AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  String r = "0";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            const Text("First Number : ",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
            Flexible(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num1controller,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            const Text("Second Number : ",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),),
            Flexible(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num2controller,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Addition",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              onPressed : () {
                setState(() {
                  int result = int.parse(num1controller.text) + int.parse(num2controller.text);
                  r = result.toString();
                });
              },
            ),
            ElevatedButton(
              child: const Text("Subtraction",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              onPressed : () {
                setState(() {
                  int result = int.parse(num1controller.text) - int.parse(num2controller.text);
                  r = result.toString();
                });
              },
            ),
            ElevatedButton(
              child: const Text("Multiplication",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              onPressed : () {
                setState(() {
                  int result = int.parse(num1controller.text) * int.parse(num2controller.text);
                  r = result.toString();
                });
              },
            ),
            ElevatedButton(
              child: const Text("Division",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),),
              onPressed : () {
                setState(() {
                  double result = double.parse(num1controller.text)/double.parse(num2controller.text);
                  r = result.toStringAsPrecision(9);
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Power",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              onPressed : () {
                setState(() {
                  double result = pow(double.parse(num1controller.text), double.parse(num2controller.text)).toDouble();
                  r = result.toStringAsPrecision(9);
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Result:",
              style: TextStyle(
                fontSize: 15,
              ),),
            Text(r,
              style: const TextStyle(
                fontSize: 15,
              ),),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyDistanceConvert()),
            );
          },
          child: const Text('Converter'),
        ),

      ],

    );
  }
}