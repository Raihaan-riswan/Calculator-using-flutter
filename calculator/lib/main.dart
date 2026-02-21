import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String inputvalu = "";
  String caculatedValu = "";
  String operator = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                inputvalu,
                style: TextStyle(color: Colors.white, fontSize: 100),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    calc("7", Colors.white38),
                    calc("8", Colors.white38),
                    calc("9", Colors.white38),
                    calc("/", Colors.orange)
                  ],
                ),
                Row(
                  children: [
                    calc("4", Colors.white38),
                    calc("5", Colors.white38),
                    calc("6", Colors.white38),
                    calc("*", Colors.orange)
                  ],
                ),
                Row(
                  children: [
                    calc("1", Colors.white38),
                    calc("2", Colors.white38),
                    calc("3", Colors.white38),
                    calc("-", Colors.orange)
                  ],
                ),
                Row(
                  children: [
                    calc("0", Colors.white38),
                    calc(".", Colors.white38),
                    calc("=", Colors.white38),
                    calc("+", Colors.orange)
                  ],
                ),
                calc("clear", Colors.black)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget calc(String text, Color bgcolor) {
    return InkWell(
      onTap: () {
        if (text == "clear") {
          setState(() {
            inputvalu = "";
          });
        } else if (text == "+" || text == "-" || text == "*" || text == "/") {
          setState(() {
            caculatedValu = inputvalu;
            inputvalu = "";
          });
        } else if (text == "=") {
          setState(() {
            inputvalu = (double.parse(inputvalu) + double.parse(caculatedValu))
                .toString();
          });
        } else {
          setState(() {
            inputvalu = inputvalu + text;
          });
        }
      },
      child: Container(
          decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(100),
          ),
          margin: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.width / 5,
          width: MediaQuery.of(context).size.width / 5,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          )),
    );
  }
}
