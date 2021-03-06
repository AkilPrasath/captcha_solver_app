// import 'dart:math';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:crack_captcha/Admin/BottomNavEnum.dart';
// import 'package:crack_captcha/Admin/NavBarListener.dart';
// import 'package:crack_captcha/constants/colors.dart';
//
// class AdminHome extends StatefulWidget {
//   const AdminHome({Key? key,  }) : super(key: key);
//
//   @override
//   State<AdminHome> createState() => _AdminHomeState();
// }
//
// class _AdminHomeState extends State<AdminHome> {
//   bool gridSwitch = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       return SafeArea(
//         child: Container(
//           color: kprimaryLightColor,
//           height: constraints.maxHeight,
//           width: constraints.maxWidth,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     RichText(
//                       text: TextSpan(
//                           text: "Hello\n",
//                           style: TextStyle(
//                               fontSize: 22, color: Colors.blueGrey[600]),
//                           children: [
//                             TextSpan(
//                                 text: "Akil!",
//                                 style: TextStyle(
//                                     fontSize: 34,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.blueGrey[900])),
//                           ]),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Icon(Icons.notifications,
//                           color: Colors.blueGrey[900], size: 30),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Recents",
//                       style: TextStyle(
//                         color: Colors.blueGrey[900],
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                     InkWell(
//                       onTap: (){
//                       },
//                       child: Text("See All",
//                           style: TextStyle(
//                               color: Colors.blueGrey[900],
//                               fontSize: 14,
//                               decoration: TextDecoration.underline,
//                               fontWeight: FontWeight.bold)),
//                     )
//                   ],
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       "Grid View",
//                       style: TextStyle(
//                         color: Colors.blueGrey[900],
//                         fontWeight: FontWeight.bold,
//                         fontSize: 14,
//                       ),
//                     ),
//                     Switch(
//                         value: gridSwitch,
//                         onChanged: (val) {
//                           setState(() {
//                             gridSwitch = val;
//                           });
//                         }),
//                   ],
//                 ),
//               ),
//               gridSwitch
//                   ? Container(
//                       height: 200,
//                       child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: 5,
//                           itemBuilder: (context, index) {
//                             return GridItem(width: 0,);
//                           }),
//                     )
//                   : Container(
//                       height: 300,
//                       child: ListView.builder(
//                           itemCount: 5,
//                           itemBuilder: (context, index) {
//                             return CardItem();
//                           }),
//                     ),
//               SizedBox(height: 20),
//               Align(
//                 alignment: Alignment.center,
//                 child: MaterialButton(
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20))),
//                   onPressed: (){},
//                 child: Text("New Missing Complaint",
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//                 ),
//                   color: kprimaryDarkColor,
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }
//
// class CardItem extends StatelessWidget {
//   const CardItem({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Card(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
//           child: Row(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: CircleAvatar(
//                   minRadius: 30,
//                   backgroundImage: AssetImage(
//                     "assets/images/pic-${(Random().nextInt(2) + 1).toString()}.jpeg",
//                   ),
//                 ),
//               ),
//               Expanded(
//                   flex: 3,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Padding(
//                         padding: EdgeInsets.all(4.0),
//                         child: Text(
//                           "Nekha B",
//                           style: TextStyle(
//                               fontSize: 26, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(4.0),
//                         child: Text(
//                           "Age: 21",
//                           style: TextStyle(fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(4.0),
//                         child: Text("Missing Date: 04/06/2022",
//                             style: TextStyle(fontWeight: FontWeight.w600)),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(4.0),
//                         child: Text("B12 Police Station - Trichy",
//                             style: TextStyle(fontWeight: FontWeight.w600)),
//                       ),
//                     ],
//                   ))
//             ],
//           ),
//         ),
//         elevation: 4,
//         color: Colors.white,
//       ),
//     );
//   }
// }
//
import 'dart:math';

import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.width,
  }) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:4.0),
      child: Container(
        height: 150,
        width: width,
        // color: Colors.red,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Card(
              child: Image.asset(
                "assets/images/captcha-1.png",
                width: width,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              height: 150,
              width: width - 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [
                    0.1,
                    0.9,
                  ],
                  colors: [
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.05),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "AS6RF",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
