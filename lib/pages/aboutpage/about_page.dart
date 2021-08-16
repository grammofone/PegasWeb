import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegas_solutions/providers/utility_provider.dart';
import 'package:pegas_solutions/utilities/strings.dart';
import 'package:provider/provider.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopAboutMe();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return TabletAboutMe();
        } else {
          return MobileAboutMe();
        }
      },
    );
  }
}

class DesktopAboutMe extends StatefulWidget {
  @override
  _DesktopAboutMeState createState() => _DesktopAboutMeState();
}

class _DesktopAboutMeState extends State<DesktopAboutMe> {
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
        //padding: EdgeInsets.only(left: 0.14 * width, right: 0.09 * width),
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.blue[100]],
        )),
        padding: EdgeInsets.only(top: 0, left: 20, right: 20),
        //height: 1 * height,
        //padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            SizedBox(
              height: 32,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 32),
                child: nameWidget(60, 30),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Container(
                      width: 0.8 * width,
                      child:
                          SvgPicture.asset('lib/images/developer_activity.svg'),
                    ),
                  ),
                  SizedBox(height: 32),
                  // myImageWidget(height / 1.5, width / 2)
                  Padding(
                    padding: const EdgeInsets.only(right: 350),
                    child: MaterialButton(
                        hoverElevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        color: Colors.blue[400],
                        child: Text(
                          kViewAllWork,
                          style: GoogleFonts.varelaRound(
                              color: Colors.white, fontSize: 18),
                        ),
                        onPressed: () async {
                          scrollController.animateTo(
                            0.7 * scrollController.position.maxScrollExtent,
                            duration: Duration(seconds: 1),
                            curve: Curves.ease,
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        )
        //padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
        // child: stackedWidgets(height, width)
        // child: Container(
        //     decoration: BoxDecoration(
        //         gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   colors: [Colors.white, Colors.blue[100]],
        // ))),
        );
  }
}

class MobileAboutMe extends StatefulWidget {
  @override
  _MobileAboutMeState createState() => _MobileAboutMeState();
}

class _MobileAboutMeState extends State<MobileAboutMe> {
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
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.blue[100]],
        )),
        padding: EdgeInsets.only(top: 0, left: 20, right: 20),
        //height: 1 * height,
        width: width,
        //padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 100,
            ),
            nameWidget(40, 15),

            // myImageWidget(height / 1.5, width / 2)
            Container(
              width: 0.8 * width,
              child: SvgPicture.asset('lib/images/dev_productivity.svg'),
            ),
            // myImageWidget(height / 1.5, width / 2)
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
                    0.75 * scrollController.position.maxScrollExtent,
                    duration: Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                }),
            SizedBox(
              height: 64,
            ),            Text(sWhatIdo,
                style: GoogleFonts.varelaRound(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey[700])),
            SizedBox(height: 32),
          ],
        ));
  }
}

class TabletAboutMe extends StatefulWidget {
  @override
  _TabletAboutMeState createState() => _TabletAboutMeState();
}

class _TabletAboutMeState extends State<TabletAboutMe> {
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
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, Colors.blue[100]],
      )),
      // height: height,
      width: width,
      //padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
      // padding: EdgeInsets.only(left: 0.001 * width, right: 0.02 * width),
      child: tabletViewWidget(width, height, scrollController),
    );
  }
}

//common name and description widget
Widget nameWidget(double nameFontSize, double descFontSize) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        sHello,
        style: GoogleFonts.varelaRound(
            fontSize: nameFontSize,
            fontWeight: FontWeight.w600,
            color: Colors.blue[400]),
      ),
      Text(
        sName,
        style: GoogleFonts.varelaRound(
            fontSize: nameFontSize,
            fontWeight: FontWeight.w600,
            color: Colors.blue[400]),
      ),
      Text(
        sDescription,
        style: GoogleFonts.varelaRound(
            fontSize: descFontSize, color: Colors.blueGrey[400]),
      ),
    ],
  );
}



//tablet view code simplification
Widget tabletViewWidget(double width, double height, ScrollController scrollController) {
  return Container(
      padding: EdgeInsets.only(left: 0.02 * width, right: 0.02 * width),
      // height: height,
      width: width,
      //padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          nameWidget(50, 20),
          SizedBox(
            height: 32,
          ),
          Container(
            width: 0.8 * width,
            child: SvgPicture.asset('lib/images/developer_activity.svg'),
          ),
          MaterialButton(
              hoverElevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              color: Colors.blue[400],
              child: Text(
                kViewAllWork,
                style:
                    GoogleFonts.varelaRound(color: Colors.white, fontSize: 18),
              ),
              onPressed: () async {
                scrollController.animateTo(
                  0.73 * scrollController.position.maxScrollExtent,
                  duration: Duration(seconds: 1),
                  curve: Curves.ease,
                );
              }),
          SizedBox(height: 100),
          Text(sWhatIdo,
              style: GoogleFonts.varelaRound(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[400])),
          SizedBox(
            height: 32,
          ),
        ],
      ));
}