import 'package:flutter/material.dart';
import 'package:salaryapp/home.dart';

class Result extends StatefulWidget {
  final double x;
  Result({Key? key, required this.x}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Result"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(widget.x.toString(),
                      style: TextStyle(fontSize: 50, color: Colors.red))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
