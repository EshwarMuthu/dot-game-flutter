import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Dotapp());

class Dotapp extends StatefulWidget {
  @override
  _dotapp createState() => _dotapp();
}


class _dotapp extends State<Dotapp> {
  void find(arrive) {
  var ran = new Random();
  var num = ran.nextInt(9);
  if (num == arrive) {
    print("dot found");
    setState(){
      i="dot found";
    }
  } else {
    print("dot not found. it is in $num");
    setState(){
      i="dot not found. try again";
    }
  }
}
String i="Start by tapping the box.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dot game"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Are you lucky enough. Press on the boxes to check!"),
            Text(i),
            Container(
              alignment: Alignment(0.0, 0.0),
              child: Container(
                  constraints: BoxConstraints(
                    maxHeight: 350.0,
                    maxWidth: 350.0,
                    minHeight: 200.0,
                    minWidth: 200.0,
                  ),
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: <Widget>[
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("1"),
                        onPressed: () {
                          int send = 1;
                          find(send);
                        },
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("2"),
                        onPressed: () {
                          int send = 2;
                          find(send);
                        },
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("3"),
                        onPressed: () {
                          int send = 3;
                          find(send);
                        },
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("4"),
                        onPressed: () {
                          int send = 4;
                          find(send);
                        },
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("5"),
                        onPressed: () {
                          int send = 5;
                          find(send);
                        },
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("6"),
                        onPressed: () {
                          int send = 6;
                          find(send);
                        },
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("7"),
                        onPressed: () {
                          int send = 7;
                          find(send);
                        },
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("8"),
                        onPressed: () {
                          int send = 8;
                          find(send);
                        },
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.green,
                        child: Text("9"),
                        onPressed: () {
                          int send = 9;
                          find(send);
                        },
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
