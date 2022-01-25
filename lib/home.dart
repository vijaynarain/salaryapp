// import 'package:flutter/material.dart';
// import 'package:salaryapp/register.dart';
// import 'package:salaryapp/result.dart';

// double x = 0;

// class Home extends StatefulWidget {
//   Home({Key? key, required this.basic, required this.result}) : super(key: key);
//   final double result;
//   final double basic;

//   @override
//   HomeState createState() => HomeState();
// }

// class HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       appBar: AppBar(
//         title: Text("Salary Calculator"),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             width: MediaQuery.of(context).size.width * 0.85,
//             height: MediaQuery.of(context).size.height * 0.4,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(20))),
//             child: Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: new InputDecoration(
//                       border: new OutlineInputBorder(
//                           borderSide: new BorderSide(color: Colors.black)),
//                       hintText: 'Value of X',
//                       labelStyle: TextStyle(color: Colors.white),
//                       prefixIcon: const Icon(
//                         Icons.account_balance_wallet,
//                         color: Colors.black,
//                       ),
//                     ),
//                     keyboardType: TextInputType.number,
//                     onChanged: (value) {
//                       x = double.parse(value);
//                       x = basic * x / 100 + widget.result;
//                     },
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 30),
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           primary: Colors.red, onPrimary: Colors.white),
//                       child: Text("Calculate"),
//                       onPressed: () {
//                         print("${x}");
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Result(
//                                       x: x + widget.result,
//                                     )));
//                       },
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
