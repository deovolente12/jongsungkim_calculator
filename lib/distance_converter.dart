import 'package:flutter/material.dart';
import 'main.dart';

class MyDistanceConvert extends StatelessWidget {
  const MyDistanceConvert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Distance Converter'),
        ),
        body: const DistanceConvert(),
      ),
    );
  }
}


  class DistanceConvert extends StatefulWidget {
  const DistanceConvert({Key? key}) : super(key: key);

  @override
  _DistanceConvertState createState() => _DistanceConvertState();
}

class _DistanceConvertState extends State<DistanceConvert> {
  TextEditingController num3controller = TextEditingController();
  String r = "0";
  @override

  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text("Enter your distance: "),
              Flexible(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: num3controller,
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ElevatedButton(
            onPressed: () {
              setState(() {
                double result = double.parse(num3controller.text)*0.621371;
                r = result.toString()+" Mi";
              });
            },
            child: const Text('Kilometers to Miles'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                double result = double.parse(num3controller.text)*1.609;
                r = result.toString() + " Km";
              });
            },
            child: const Text('Miles to Kilometers'),
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
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child: const Text('Calculator'),
          ),

        ]
      )
    );
  }

}
