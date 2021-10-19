import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Calculator';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const AddTwoNumbers(),
      ),
    );
  }
}
class AddTwoNumbers extends StatefulWidget {
  const AddTwoNumbers({Key? key}) : super(key: key);

  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  String r = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text("First Number : "),
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
              const Text("Second Number : "),
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
                    r = result.toStringAsPrecision(3);
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
                    double result = double.parse(num1controller.text)*double.parse(num2controller.text);
                    r = result.toStringAsPrecision(3);
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
        ],
      ),
    );
  }
}
