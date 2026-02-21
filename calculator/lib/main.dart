import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(100),
                        
                      ),
                      margin: EdgeInsets.only(top: 40),
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text(
                        "7",
                        style: TextStyle(color: Colors.white,fontSize: 30,),
                      ),
                    ),

                     Container(
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(100),
                        
                      ),
                      margin: EdgeInsets.only(top: 40),
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text(
                        "8",
                        style: TextStyle(color: Colors.white,fontSize: 30,),
                      ),
                    ),

                     Container(
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(100),
                        
                      ),
                      margin: EdgeInsets.only(top: 40),
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text(
                        "9",
                        style: TextStyle(color: Colors.white,fontSize: 30,),
                      ),
                    ),

                     Container(
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(100),
                        
                      ),
                      margin: EdgeInsets.only(top: 40),
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text(
                        "/",
                        style: TextStyle(color: Colors.white,fontSize: 30,),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
