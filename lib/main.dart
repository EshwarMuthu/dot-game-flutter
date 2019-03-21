import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Dotapp(),
    },
  ));
}

class Dotapp extends StatefulWidget {
  @override
  _dotapp createState() => _dotapp();
}

class _dotapp extends State<Dotapp> {
  String _i = "Keep pressing for 20 times";
  String _mycolor1 = "green";
  String _mycolor2 = "green";
  String _mycolor3 = "green";
  String _mycolor4 = "green";
  String _mycolor5 = "green";
  String _mycolor6 = "green";
  String _mycolor7 = "green";
  String _mycolor8 = "green";
  String _mycolor9 = "green";
  int _counter = 0;
  int _found = 0;
  void find(arrive) {
    _counter++;
    if (_counter == 20) {
      double index = (_found / _counter) * 100;
      _counter = 0;
      _found = 0;
      AlertDialog alert = AlertDialog(
        content: Text("Your lucky index is $index out of 100"),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("OK"),
          )
        ],
      );
      showDialog(context: context, child: alert);
    }
    var ran = new Random();
    var num = ran.nextInt(9);
    if (num == arrive - 1) {
      print("dot found");
      _found++;
      setState(() {
        _i = "DOT FOUND";
        switch (arrive) {
          case 1:
            _mycolor1 = "red";
            break;
          case 2:
            _mycolor2 = "red";
            break;
          case 3:
            _mycolor3 = "red";
            break;
          case 4:
            _mycolor4 = "red";
            break;
          case 5:
            _mycolor5 = "red";
            break;
          case 6:
            _mycolor6 = "red";
            break;
          case 7:
            _mycolor7 = "red";
            break;
          case 8:
            _mycolor8 = "red";
            break;
          case 9:
            _mycolor9 = "red";
            break;
          default:
        }
      });
    } else {
      print("dot not found. it is in $num");
      setState(() {
        _i = "Dot NOT found. Try again";
        _mycolor1 = "green";
        _mycolor2 = "green";
        _mycolor3 = "green";
        _mycolor4 = "green";
        _mycolor5 = "green";
        _mycolor6 = "green";
        _mycolor7 = "green";
        _mycolor8 = "green";
        _mycolor9 = "green";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Dot game"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("Are you lucky enough. Press on the boxes to check!",style: TextStyle(
            fontSize: 15,
          ),),
          Text("$_i", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red,
          ),),
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
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  crossAxisCount: 3,
                  children: <Widget>[
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor1 == "green" ? Colors.green : Colors.red,
                      child: _mycolor1 == "green"
                          ? Text("1")
                          : Icon(Icons.brightness_1),
                      onPressed: () {
                        int send = 1;
                        find(send);
                      },
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor2 == "green" ? Colors.green : Colors.red,
                      child: _mycolor2 == "green"
                          ? Text("2")
                          : Icon(Icons.brightness_1),
                      onPressed: () {
                        int send = 2;
                        find(send);
                      },
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor3 == "green" ? Colors.green : Colors.red,
                      child: _mycolor3 == "green"
                          ? Text("3")
                          : Icon(Icons.brightness_1),
                      onPressed: () {
                        int send = 3;
                        find(send);
                      },
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor4 == "green" ? Colors.green : Colors.red,
                      child: _mycolor4 == "green"
                          ? Text("4")
                          : Icon(Icons.brightness_1),
                      onPressed: () {
                        int send = 4;
                        find(send);
                      },
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor5 == "green" ? Colors.green : Colors.red,
                      child: _mycolor5 == "green"
                          ? Text("5")
                          : Icon(Icons.brightness_1),
                      onPressed: () {
                        int send = 5;
                        find(send);
                      },
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor6 == "green" ? Colors.green : Colors.red,
                      child: _mycolor6 == "green"
                          ? Text("6")
                          : Icon(Icons.brightness_1),
                      onPressed: () {
                        int send = 6;
                        find(send);
                      },
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor7 == "green" ? Colors.green : Colors.red,
                      child: _mycolor7 == "green"
                          ? Text("7")
                          : Icon(Icons.brightness_1),
                      onPressed: () {
                        int send = 7;
                        find(send);
                      },
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor8 == "green" ? Colors.green : Colors.red,
                      child: _mycolor8 == "green"
                          ? Text("8")
                          : Icon(Icons.brightness_1),
                      onPressed: () {
                        int send = 8;
                        find(send);
                      },
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor:
                          _mycolor9 == "green" ? Colors.green : Colors.red,
                      child: _mycolor9 == "green"
                          ? Text("9")
                          : Icon(Icons.brightness_1),
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
    );
  }
}
