import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:align_positioned/align_positioned.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(209, 133, 133, 1.0),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(18.0, 21.0),
                            blurRadius: 15.0,
                            spreadRadius: 2.0,
                            color: Colors.grey,
                          ),
                        ]),
                    height: 180,
                    width: 95.w,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Color.fromRGBO(196, 196, 196, 1.0),
                            height: 50.0,
                            width: 200.0,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: Color.fromRGBO(168, 216, 173, 1.0),
                            height: 50.0,
                            width: 85.w,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 30.0),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(209, 133, 133, 1.0),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(18.0, 21.0),
                                        blurRadius: 15.0,
                                        spreadRadius: 2.0,
                                        color: Colors.grey,
                                      ),
                                    ]),
                                height: 180, width: 95.w,
                                //color: Color.fromRGBO(209, 133, 133, 1.0),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: Color.fromRGBO(
                                          168,
                                          216,
                                          173,
                                          1.0,
                                        ),
                                        height: 50,
                                        width: 85.w,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),

                          Container(
                            height: 250,
                            child: AlignPositioned(
                              alignment: Alignment.topCenter,
                              moveByChildHeight: -0.1,
                              child: Container(
                                color: Color.fromRGBO(196, 196, 196, 1.0),
                                height: 80.0,
                                width: 200.0,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
//
