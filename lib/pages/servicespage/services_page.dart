import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegas_solutions/providers/utility_provider.dart';
import 'package:pegas_solutions/utilities/strings.dart';
import 'package:provider/provider.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopServicesPage();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return TabletServicesPage();
        } else {
          return MobileServicesPage();
        }
      },
    );
  }
}

class DesktopServicesPage extends StatefulWidget {
  @override
  _DesktopServicesPageState createState() => _DesktopServicesPageState();
}

class _DesktopServicesPageState extends State<DesktopServicesPage> {
  var width;
  var height;
  var utilityProvider;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Color.fromRGBO(222, 225, 229, 1), Colors.blue[100]],
      )),
      // color: Colors.blue[100],
      padding: EdgeInsets.symmetric(horizontal: 0.1 * width),
      width: width,
      // height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Center(child: whatIDoWidget(45)),
          SizedBox(
            height: 74,
          ),
          Center(
            child: Text(sWhatIdo,
                style: GoogleFonts.varelaRound(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[300])),
          ),
          SizedBox(
            height: 42,
          ),
          Material(
            color: Color.fromRGBO(255, 255, 255, 0.3),
            borderRadius: BorderRadius.all(Radius.circular(32)),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      whatIDoCard('lib/icons/android_icon.png'),
                      Text("Android application",
                          style: GoogleFonts.varelaRound(
                              fontSize: 24, color: Colors.blue[100])),
                    ],
                  ),
                  Text("+",
                      style: GoogleFonts.varelaRound(
                          fontSize: 200, color: Colors.blue[100])),
                  Column(
                    children: [
                      whatIDoCard('lib/icons/apple_icon.png'),
                      Text("Ios application",
                          style: GoogleFonts.varelaRound(
                              fontSize: 24, color: Colors.blue[100])),
                    ],
                  ),
                  Text("=",
                      style: GoogleFonts.varelaRound(
                          fontSize: 200, color: Colors.blue[100])),
                  Column(
                    children: [
                      whatIDoCard('lib/icons/cross_platform_icon.png'),
                      Text("Single source code",
                          style: GoogleFonts.varelaRound(
                              fontSize: 24, color: Colors.blue[100])),
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     Text("Single",
                  //         style: GoogleFonts.varelaRound(
                  //             fontSize: 48, color: Colors.blueGrey[400])),
                  //     Text("source",
                  //         style: GoogleFonts.varelaRound(
                  //             fontSize: 48, color: Colors.blueGrey[400])),
                  //     Text("code",
                  //         style: GoogleFonts.varelaRound(
                  //             fontSize: 48, color: Colors.blueGrey[400])),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 180,
          ),
          // Row(
          //   mainAxisSize: MainAxisSize.max,
          //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(left: 40.0),
          //       child: whoIAmWidget(45),
          //     ),
          //     SizedBox(
          //       width: 0.20 * width,
          //     ),
          //     whoIamDetailsWidget(80)
          //   ],
          // ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                whoIAmWidget(50),
                SizedBox(
                  height: 0.04 * width,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("1.",
                              style: GoogleFonts.varelaRound(
                                  fontSize: 45, color: Colors.blueGrey[300])),
                          Icon(
                            Icons.monetization_on_sharp,
                            color: Colors.teal[300],
                            size: 75,
                          ),
                          Text("2X times less financial costs",
                              style: GoogleFonts.varelaRound(
                                  fontSize: 40, color: Colors.blueGrey[300])),
                        ],
                      ),
                      SizedBox(
                        height: 0.03 * width,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("2.",
                              style: GoogleFonts.varelaRound(
                                  fontSize: 45, color: Colors.blueGrey[300])),
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.amberAccent[100],
                            size: 75,
                          ),
                          Text("2X times less hours",
                              style: GoogleFonts.varelaRound(
                                  fontSize: 40, color: Colors.blueGrey[300])),
                        ],
                      ),
                      SizedBox(
                        height: 0.03 * width,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("2.",
                              style: GoogleFonts.varelaRound(
                                  fontSize: 45, color: Colors.blueGrey[300])),
                          Icon(
                            Icons.person,
                            color: Colors.pinkAccent[100],
                            size: 75,
                          ),
                          Text(
                              "One and the same developer for the entire project cycle",
                              style: GoogleFonts.varelaRound(
                                  fontSize: 40, color: Colors.blueGrey[300])),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabletServicesPage extends StatefulWidget {
  @override
  _TabletServicesPageState createState() => _TabletServicesPageState();
}

class _TabletServicesPageState extends State<TabletServicesPage> {
  var width;
  var height;
  var utilityProvider;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Color.fromRGBO(222, 225, 229, 1), Colors.blue[100]],
      )),
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 0.1 * width),

      //height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // SizedBox(
          //   height: 30,
          // ),
          // // Center(child: whatIDoWidget(30)),
          // SizedBox(
          //   height: 30,
          // ),
          Material(
            color: Color.fromRGBO(255, 255, 255, 0.3),
            borderRadius: BorderRadius.all(Radius.circular(24)),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/icons/android_icon.png',
                        width: width * 0.15,
                      ),
                      Text("Android application",
                          style: GoogleFonts.varelaRound(
                              fontSize: 20, color: Colors.blue[100])),
                    ],
                  ),
                  Text("+",
                      style: GoogleFonts.varelaRound(
                          fontSize: width * 0.15, color: Colors.blue[100])),
                  Column(
                    children: [
                      Image.asset(
                        'lib/icons/apple_icon.png',
                        width: width * 0.15,
                      ),
                      Text("Ios application",
                          style: GoogleFonts.varelaRound(
                              fontSize: 20, color: Colors.blue[100])),
                    ],
                  ),
                  Text("=",
                      style: GoogleFonts.varelaRound(
                          fontSize: width * 0.15, color: Colors.blue[100])),
                  Column(
                    children: [
                      Image.asset(
                        'lib/icons/cross_platform_icon.png',
                        width: width * 0.15,
                      ),
                      Text("Single source code",
                          style: GoogleFonts.varelaRound(
                              fontSize: 20, color: Colors.blue[100])),
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     Text("Single",
                  //         style: GoogleFonts.varelaRound(
                  //             fontSize: 48, color: Colors.blueGrey[400])),
                  //     Text("source",
                  //         style: GoogleFonts.varelaRound(
                  //             fontSize: 48, color: Colors.blueGrey[400])),
                  //     Text("code",
                  //         style: GoogleFonts.varelaRound(
                  //             fontSize: 48, color: Colors.blueGrey[400])),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                whoIAmWidget(30),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("1.",
                        style: GoogleFonts.varelaRound(
                            fontSize: 32, color: Colors.blueGrey[300])),
                    Icon(
                      Icons.monetization_on_sharp,
                      color: Colors.teal[300],
                      size: 50,
                    ),
                    Text("2X times less financial costs",
                        style: GoogleFonts.varelaRound(
                            fontSize: 32, color: Colors.blueGrey[300])),
                  ],
                ),
                SizedBox(
                  height: 0.03 * width,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("2.",
                        style: GoogleFonts.varelaRound(
                            fontSize: 32, color: Colors.blueGrey[300])),
                    Icon(
                      Icons.timer_outlined,
                      color: Colors.amberAccent[100],
                      size: 50,
                    ),
                    Text("2X times less hours",
                        style: GoogleFonts.varelaRound(
                            fontSize: 32, color: Colors.blueGrey[300])),
                  ],
                ),
                SizedBox(
                  height: 0.03 * width,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("2.",
                        style: GoogleFonts.varelaRound(
                            fontSize: 32, color: Colors.blueGrey[300])),
                    Icon(
                      Icons.person,
                      color: Colors.pinkAccent[100],
                      size: 50,
                    ),
                    Container(
                      width: width * 0.6,
                      child: Text(
                          "One and the same developer for the entire project cycle",
                          maxLines: 2,
                          style: GoogleFonts.varelaRound(
                              fontSize: 32, color: Colors.blueGrey[300])),
                    ),
                  ],
                ),
                whoIamDetailsWidget(40, scrollController)
              ],
            ),
          ),

          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}

class MobileServicesPage extends StatefulWidget {
  @override
  _MobileServicesPageState createState() => _MobileServicesPageState();
}

class _MobileServicesPageState extends State<MobileServicesPage> {
  var width;
  var height;
  var utilityProvider;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Color.fromRGBO(222, 225, 229, 1), Colors.blue[100]],
      )),
      padding: EdgeInsets.only(left: 20, right: 20),
      width: width,
      //height: height,
      child: Column(
        children: [
          // SizedBox(
          //   height: 30,
          // ),
          // // whatIDoWidget(30),
          // SizedBox(
          //   height: 30,
          // ),
          whatIdoCardMobile(
            height,
            width,
            Colors.yellowAccent.withOpacity(0.4),
            'lib/icons/pen.png',
            sCard1title,
            kCard1Descrption,
          ),
          whatIdoCardMobile(
            height,
            width,
            Colors.tealAccent.withOpacity(0.4),
            'lib/icons/mob_dev.png',
            sCard2title,
            kCard2Descrption,
          ),
          whatIdoCardMobile(
            height,
            width,
            Colors.redAccent.withOpacity(0.4),
            'lib/icons/web.png',
            sCard3title,
            kCard3Descrption,
          ),
          SizedBox(
            height: 30,
          ),
          whoIAmWidget(30),
          whoIamDetailsWidget(30, scrollController)
        ],
      ),
    );
  }
}

// Widget whatIDoWidget(double fontSize) {
//   return Text(sWhatIdo,
//       style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600));
// }

Widget whatIDoCard(String iconPath) {
  return Container(
    child: Center(
        child: Image.asset(
      iconPath,
    )),
  );
}

Widget whoIAmWidget(double fontSize) {
  return Text(sBenefits,
      textAlign: TextAlign.start,
      style: GoogleFonts.varelaRound(
          fontSize: fontSize,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w600,
          color: Colors.blue[300]));
}

Widget whoIamDetailsWidget(
    double spaceAfterCards, ScrollController scrollController) {
  return Container(
    margin: EdgeInsets.only(top: spaceAfterCards),
    width: 600,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
                hoverElevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                color: Colors.blue[400],
                child: Text(
                  kViewAllWork,
                  style: GoogleFonts.varelaRound(
                      color: Colors.white, fontSize: 18),
                ),
                onPressed: () async {
                  scrollController.animateTo(
                    0.9 * scrollController.position.maxScrollExtent,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                }),
          ],
        ),
        SizedBox(
          height: 12,
        ),
      ],
    ),
  );
}

Widget whatIdoCardMobile(double height, double width, Color color,
    String imagePath, String title, String description) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        //color: Colors.black,
        // height: height / 6,
        width: width,
        child: Material(
          color: Color.fromRGBO(255, 255, 255, 0.5),
          borderRadius: BorderRadius.all(Radius.circular(6)),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: color,
                ),
                width: 120,
                height: 130,
                child: Center(
                  child: Image(
                      //fit: BoxFit.cover,
                      width: 60,
                      image: AssetImage(
                        imagePath,
                      )),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.varelaRound(
                            color: Colors.blueGrey[800],
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        description,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.varelaRound(
                          letterSpacing: 0.5,
                          fontSize: 12,
                          color: Colors.blueGrey[400],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
