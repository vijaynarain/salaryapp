import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:salaryapp/home.dart';
import 'package:salaryapp/result.dart';

double basic = 0;
double hra = 0;
double sa = 0;
double tp = 0;
double da = 0;
int empty_check = 0;

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  swda(basic, hra, sa, tp) {
    double result = basic + hra + sa + tp + da;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.black)),
                      hintText: 'Basic',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.account_balance_wallet,
                        color: Colors.black,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      basic = double.parse(value);
                      if (basic == 0.0) {
                        empty_check = 0;
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black)),
                        hintText: 'Hra %',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.account_balance_rounded,
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        hra = double.parse(value) / 100 * basic;
                        if (hra == 0.0) {
                          empty_check = 0;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black)),
                        hintText: 'X %',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.analytics_rounded,
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        da = double.parse(value) / 100 * basic;
                        if (da == 0.0) {
                          empty_check = 0;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black)),
                        hintText: 'Special Allowance %',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.account_tree,
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        sa = (basic + da);
                        sa = sa * double.parse(value) / 100;
                        if (sa == 0.0) {
                          empty_check = 0;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.black)),
                        hintText: 'Transport',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.bus_alert_rounded,
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        tp = double.parse(value);
                        if (tp == 0.0) {
                          empty_check = 0;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, onPrimary: Colors.white),
                      child: Text("Register"),
                      onPressed: () {
                        print(
                            "${basic} ${hra} ${sa} ${da} ${tp} ${empty_check}");
                        //print(da);
                        print(swda(basic, hra, sa, tp));
                        print(empty_check); //salary without da
                        if (basic == 0.0 ||
                            hra == 0.0 ||
                            sa == 0.0 ||
                            da == 0.0 ||
                            tp == 0.0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Result(x: swda(basic, hra, sa, tp))));
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
