import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      // extendBodyBehind
      // AppBar: true,
      // backgroundColor: Colors.blue,
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.blue.withOpacity(0.2),
      //   leading: BackButton(),
      //   title: Container(
      //     child: "Action".text.make(),
      //   ),
      // ),
      body: SafeArea(
        child: Center(
          child:
          Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade200,
                Colors.blue.shade300,
                Colors.blue.shade400,
                Colors.blue.shade500,
],
              stops: [.05,.35,.7,.98],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(.1),
                offset: Offset(-4,-4),
                blurRadius: 2,
                spreadRadius: -2,
              ),
              BoxShadow(
                color: Colors.blue.shade600,
                offset: Offset(4,4),
                blurRadius: 2,
                spreadRadius: -2,
              ),
            ],
            ),
            child:Text(
                "pi=this.pi",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader =  LinearGradient(
                      colors: [
                        Colors.blue.shade100,
                        Colors.blue.shade300,
                        Colors.blue.shade500,
                        //add more color here.
                      ],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                )
            )
          ),

          // Text("TEst case" ,
          //   textAlign: TextAlign.center,style: TextStyle(
          //
          //   color: Colors.blue,
          //   fontSize: 50,
          //   shadows: [
          //     Shadow(
          //       offset: Offset(2,2),
          //       color: Colors.blue,
          //       blurRadius: 2
          //     ),
          //     Shadow(
          //         offset: Offset(-2,-2),
          //         color: Colors.white,
          //         blurRadius: 2
          //     ),
          //   ]
          // ),),
        ),
      ),
      // Stack(
      //   children: [
      //     Positioned(
      //       bottom: 0,
      //       left: 0,
      //       child: Container(
      //         width: MediaQuery.of(context).size.width,
      //         height: 80,
      //         child: Stack(
      //           children: [
      //             CustomPaint(
      //               size: Size(MediaQuery.of(context).size.width, 80),
      //               painter: BNBCustomePainter(),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      //   // Column(
      //   //   mainAxisAlignment: MainAxisAlignment.center,
      //   //   crossAxisAlignment: CrossAxisAlignment.center,
      //   //   children: [
      //   //     Container(
      //   //       height: 80,
      //   //       width: 80,
      //   //       decoration: BoxDecoration(
      //   //           color: Colors.white.withOpacity(.04),
      //   //           borderRadius: BorderRadius.circular(15),
      //   //           boxShadow: [
      //   //             BoxShadow(
      //   //                 color: Colors.blue,
      //   //                 offset: Offset(10, 10),
      //   //                 blurRadius: 5,
      //   //                 spreadRadius: -7),
      //   //             BoxShadow(
      //   //               color: Colors.white,
      //   //               offset: Offset(-10, -10),
      //   //               blurRadius: 5,
      //   //             ),
      //   //           ]),
      //   //     ),
      //   //     SizedBox(
      //   //       height: 60,
      //   //     ),
      //   //     Container(
      //   //       height: 80,
      //   //       width: 80,
      //   //       decoration: BoxDecoration(
      //   //           color: Colors.blue.shade50.withOpacity(.9),
      //   //           borderRadius: BorderRadius.circular(15),
      //   //           boxShadow: [
      //   //             BoxShadow(
      //   //                 color: Colors.blue.shade400,
      //   //                 offset: Offset(5, 5),
      //   //                 blurRadius: 0,
      //   //                 spreadRadius: -5),
      //   //             BoxShadow(
      //   //               color: Colors.blue,
      //   //               offset: Offset(-5, -5),
      //   //               blurRadius: 0,
      //   //               spreadRadius: -5,
      //   //             ),
      //   //           ]),
      //   //     ),
      //   //     SizedBox(
      //   //       height: 60,
      //   //     ),
      //   //
      //   //     Container(
      //   //       height: 100,
      //   //       width: 100,
      //   //       alignment: Alignment.center,
      //   //       decoration: BoxDecoration(
      //   //         color: Colors.blue,
      //   //         borderRadius: BorderRadius.circular(15),
      //   //         gradient: LinearGradient(
      //   //           colors: [Colors.white, Colors.blue.shade400],
      //   //           begin: Alignment.topRight,
      //   //           end: Alignment.bottomLeft,
      //   //           stops: [.5, .5],
      //   //         ),
      //   //       ),
      //   //       child: Container(
      //   //         height: 80,
      //   //         width: 80,
      //   //         alignment: Alignment.center,
      //   //         decoration: BoxDecoration(
      //   //           color: Colors.blue,
      //   //           borderRadius: BorderRadius.circular(15),
      //   //           gradient: LinearGradient(
      //   //             colors: [Colors.white, Colors.blue],
      //   //             begin: Alignment.bottomLeft,
      //   //             end: Alignment.topRight,
      //   //             stops: [.5, .5],
      //   //           ),
      //   //         ),
      //   //         child: Container(
      //   //           height: 50,
      //   //           width: 50,
      //   //           alignment: Alignment.center,
      //   //           decoration: BoxDecoration(
      //   //               color: Colors.blue.shade50.withOpacity(.9),
      //   //               borderRadius: BorderRadius.circular(15)),
      //   //           child: "KKT".text.size(15).gray700.bold.make(),
      //   //         ),
      //   //       ),
      //   //     ),
      //   //     SizedBox(
      //   //       height: 60,
      //   //     ),
      //   //
      //   //   ],
      //   // ),
      // ),
    );
  }
}
//
// class BNBCustomePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;
//     Path path = Path()..moveTo(0, 20);
//     path.quadraticBezierTo(size.width * 0.20, 0, size.width * .35, 0);
//     path.quadraticBezierTo(size.width * 0.40, 0, size.width * .40, 20);
//     path.arcToPoint(Offset(size.width*0.60, 20),radius: Radius.circular(10.0),clockwise: false);
//     path.quadraticBezierTo(size.width * 0.60, 0, size.width * .65, 20);
//     path.quadraticBezierTo(size.width * 0.80, 0, size.width * .20, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//     canvas.drawShadow(path,Colors.blue,5,true);
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     throw UnimplementedError();
//   }
// }
