import 'dart:math' as math; // import this

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegas_solutions/utilities/strings.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopPortfolioPage();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return TabletPortfolioPage();
        } else {
          return MobilePortfolioPage();
        }
      },
    );
  }
}

class DesktopPortfolioPage extends StatefulWidget {
  @override
  _DesktopPortfolioPageState createState() => _DesktopPortfolioPageState();
}

class _DesktopPortfolioPageState extends State<DesktopPortfolioPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      color: Color.fromRGBO(222, 225, 229, 1),
      //width: width,
      //height: height * 0.5,
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              mySelectedWorkWidget(50),
              SizedBox(height: 32),
              Container(
                width: width * 0.2,
                height: width * 0.1,
                child: Text(
                  sProjectDescription,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.varelaRound(
                    letterSpacing: 0.5,
                    fontSize: 26,
                    color: Colors.blueGrey[300],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.15,
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Image.asset(
              kWorkImageUrl3,
              width: width * 0.4,
            ),
          )
        ],
      ),
    );
  }
}

class TabletPortfolioPage extends StatefulWidget {
  @override
  _TabletPorfolioPageState createState() => _TabletPorfolioPageState();
}

class _TabletPorfolioPageState extends State<TabletPortfolioPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      color: Color.fromRGBO(222, 225, 229, 1),
      width: width,
      //height: height,
      padding: EdgeInsets.only(left: 0.08 * width),
      child: Row(
        children: [
          Container(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                ),
              ]),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    mySelectedWorkWidget(30),
                    SizedBox(height: 32),
                    Container(
                      width: width * 0.2,
                      height: width * 0.2,
                      child: Text(
                        sProjectDescription,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.varelaRound(
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Colors.blueGrey[400],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    // Material(
                    //   color: Color.fromRGBO(255, 255, 255, 0.3),
                    //   //shadowColor: Colors.tealAccent,
                    //   borderRadius: BorderRadius.all(Radius.circular(16)),
                    //   child: Container(
                    //     width: width * 0.2,
                    //     height: width * 0.2,
                    //     padding: EdgeInsets.all(24),
                    //     decoration: BoxDecoration(
                    //         border: Border.all(
                    //             width: 0.2, color: Colors.white12, style: BorderStyle.solid),
                    //         borderRadius: BorderRadius.circular(8)),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           sProjectDescription,
                    //           textAlign: TextAlign.left,
                    //           style: GoogleFonts.varelaRound(
                    //             letterSpacing: 0.5,
                    //             fontSize: 16,
                    //             color: Colors.blueGrey[400],
                    //             fontWeight: FontWeight.w500,
                    //           ),
                    //         ),
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),


                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: Image.asset(
                    kWorkImageUrl3,
                    width: width * 0.6,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobilePortfolioPage extends StatefulWidget {
  @override
  _MobilePortfolioPageState createState() => _MobilePortfolioPageState();
}

class _MobilePortfolioPageState extends State<MobilePortfolioPage> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      color: Color.fromRGBO(222, 225, 229, 1),
      //height: height,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(child: mySelectedWorkWidget(30)),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Image.asset(
                kWorkImageUrl3,
                width: width * 0.9,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: width * 0.5,
              height: width * 0.2,
              child: Text(
                sProjectDescription,
                textAlign: TextAlign.center,
                style: GoogleFonts.varelaRound(
                  letterSpacing: 0.5,
                  fontSize: 16,
                  color: Colors.blueGrey[400],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //workShowCaseImages(0.3 * height, 1 * width, 'lib/images/crypto.png'),
          ],
        ),
      ),
    );
  }
}

Widget mySelectedWorkWidget(double fontSize) {
  return Text(kMySelectedWork,
      style: GoogleFonts.varelaRound(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.blue[300]));
}

Widget subTitle(double fontSize) {
  return Text(sProjectName,

      style: GoogleFonts.varelaRound(
          decoration: TextDecoration.underline,
          fontSize: fontSize,
          color: Colors.blueGrey[400]));
}
// Widget workShowCaseImages(
//     double imageHeight, double imageWidth, String imageUrl) {
//   return Material(
//     //color: Colors.white,
//     borderRadius: BorderRadius.circular(8),
//     elevation: 20,
//     child: Container(
//         width: imageWidth,
//         height: imageHeight,
//         padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
//         child: Image(
//           image: AssetImage(imageUrl),
//           fit: BoxFit.cover,
//         )),
//   );
// }
