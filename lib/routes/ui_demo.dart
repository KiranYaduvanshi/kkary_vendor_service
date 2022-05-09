import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kkary_vendors/utils/image_paths.dart';
import 'package:velocity_x/velocity_x.dart';

class DemoUi extends StatefulWidget {
  @override
  DemoUiState createState() => DemoUiState();
}

class DemoUiState extends State<DemoUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 400,
                        height: 50,
                        color: Colors.white.withOpacity(0.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ).px(6),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade300,
                                        blurRadius: 3)
                                  ]),
                              child: Center(
                                  child: "Acces Permission"
                                      .text
                                      .size(12)
                                      .white
                                      .make()
                                      .px(6)
                                      .py(2)),
                            ),
                            Container(
                              width: 80,
                              child: "".text.make(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 60,
                        color: Colors.white.withOpacity(0.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                "James Bond".text.white.make(),
                                "JA77837859".text.white.make(),
                              ],
                            ),
                            const Icon(
                              Icons.check_box_outlined,
                              color: Colors.yellow,
                              size: 40,
                            )
                          ],
                        ).p(8),
                      ),
                    )
                  ],
                ),
              ),
              AnimatedContainer(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.shade300, blurRadius: 3)
                    ]),
                duration: Duration(microseconds: 200),
                child: const CircleAvatar(
                    backgroundImage: AssetImage(ImagePaths.imgMainFrame)),
              ).p(10),
              Container(
                width: 500,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.pink.shade200,
                  Colors.pink.shade100,
                  Colors.blue.shade200
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                    //color: Colors.blueAccent,
                    // image: DecorationImage(
                    //   image: NetworkImage(
                    //       "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350"),
                    //   fit: BoxFit.fill,
                    // ),
                    ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade500,
                            Colors.purple.shade200,
                            Colors.purple.shade500,
                          ]),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              offset: Offset(10, 10),
                              // spreadRadius: -20,
                              color: Colors.grey.shade100,
                            ),
                            BoxShadow(
                              blurRadius: 20,
                              offset: Offset(10, 10),
                              // spreadRadius: -20,
                              color: Colors.white,
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "VISA"
                              .text
                              .color(Colors.white)
                              .bold
                              .size(18)
                              .make()
                              .px(20)
                              .py(18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.payment,
                                  color: Colors.white, size: 25),
                              Icon(
                                Icons.wifi,
                                color: Colors.white,
                                size: 25,
                              )
                            ],
                          ).px(14),
                          Transform.translate(
                            offset: Offset(0, 60),
                            child: "56748  8908  8309  6574"
                                .text
                                .size(16)
                                .semiBold
                                .white
                                .make(),
                          ).px(14)
                        ],
                      ),
                    ),
                  ),
                ).p(20),
              ),
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(10, 10),
                        //  spreadRadius: 3,
                        color: Colors.grey,
                      ),
                      BoxShadow(
                          blurRadius: 10,
                          // spreadRadius: 10,
                          offset: Offset(-10, -10),
                          color: Colors.white),
                    ]),
              ).p(20),
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100.withOpacity(0.3),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        offset: Offset(10, 10),
                        // spreadRadius: -20,
                        color: Colors.red.shade100,
                      ),
                      const BoxShadow(
                        blurRadius: 20,
                        offset: Offset(10, 10),
                        // spreadRadius: -20,
                        color: Colors.grey,
                      ),
                    ]),
              ).p(20),
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.fromBorderSide(
                      BorderSide(color: Colors.grey.shade100),
                    ),
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.pink, blurRadius: 1, spreadRadius: 0),
                      BoxShadow(
                          color: Colors.red, blurRadius: 8, spreadRadius: 5),
                    ]),
                child: Icon(Icons.pause, size: 70, color: Colors.black54),
              ).p(8),
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.amber, Colors.red],
                      stops: [.5, .5]),
                  // boxShadow: [
                  //   BoxShadow(
                  //       offset: Offset(10, 10),
                  //       blurRadius: 8,
                  //  color: Colors.black)
                  // ]
                ),
                child: Container(
                  width: 150,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red, Colors.amber],
                      stops: [.5, .5],
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 10),
                          blurRadius: 5,
                          spreadRadius: -3,
                          color: Colors.black12)
                    ],
                  ),
                  child: Container(
                    width: 75,
                    height: 75,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.amber, Colors.red],
                            stops: [.5, .5]),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(10, 10),
                              blurRadius: 8,
                              color: Colors.amber.shade300)
                        ]),
                  ),
                ),
              ).p(8)
            ],
          ),
        ),
      ),
    );
  }
}
