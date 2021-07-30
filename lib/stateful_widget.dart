import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pembayaran"),
        ),
        body: ColorChange(),
      ),
    );
  }
}

class ColorChange extends StatefulWidget {
  @override
  _ColorChangeState createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  Color color = Colors.yellow;
  String myText = "Yellow";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150.0,
          width: 300.0,
          color: color,
          child: Center(
              child: Text(
                myText,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  color = Colors.blue;
                  myText = "Blue";
                });
              },
              color: Colors.blue,
              child: Text("Blue"),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  color = Colors.red;
                  myText = "Red";
                });
              },
              color: Colors.red,
              child: Text("Red"),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  color = Colors.green;
                  myText = "Green";
                });
              },
              color: Colors.green,
              child: Text("Green"),
            )
          ],
        )
      ],
    );
  }
}
