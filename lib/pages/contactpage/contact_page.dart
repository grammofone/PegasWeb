import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegas_solutions/providers/theme_provider.dart';
import 'package:pegas_solutions/providers/utility_provider.dart';
import 'package:pegas_solutions/utilities/strings.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopContactPage();
      } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
        return TabletContactPage();
      } else {
        return MobileContactPage();
      }
    });
  }
}

class DesktopContactPage extends StatefulWidget {
  @override
  _DesktopContactPageState createState() => _DesktopContactPageState();
}

class _DesktopContactPageState extends State<DesktopContactPage> {
  var width;
  var height;
  var utilityProvider;
  var themeProvider;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    themeProvider = Provider.of<ThemeProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromRGBO(222, 225, 229, 1), Colors.blue[100]],
      )),
      width: width,
      //height: height,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [

          SizedBox(

            height: 60,
          ),
          emailContactWidget(200, 0.4 * width, 18, 35),
          SizedBox(
            height: 60,
          ),
          websiteIcon(scrollController),
          SizedBox(
            height: 60,
          ),
          navBarItems(scrollController),
          SizedBox(
            height: 60,
          ),
          footerWidget(themeProvider, scrollController),
          //
          // SizedBox(
          //   height: 60,
          // ),
          // iconBarWidget(),

        ],
      ),
    );
  }
}

class TabletContactPage extends StatefulWidget {
  @override
  _TabletContactPageState createState() => _TabletContactPageState();
}

class _TabletContactPageState extends State<TabletContactPage> {
  var width;
  var height;
  var utilityProvider;
  var themeProvider;
  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    themeProvider = Provider.of<ThemeProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromRGBO(222, 225, 229, 1), Colors.blue[100]],
      )),
      width: width,
      //height: height,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 60,
          ),
          emailContactWidget(200, 0.8 * width, 18, 28),
          SizedBox(
            height: 60,
          ),
          websiteIcon(scrollController),
          SizedBox(
            height: 60,
          ),
          navBarItems(scrollController),
          SizedBox(
            height: 60,
          ),
          footerWidget(themeProvider, scrollController)
        ],
      ),
    );
  }
}

class MobileContactPage extends StatefulWidget {
  @override
  _MobileContactPageState createState() => _MobileContactPageState();
}

class _MobileContactPageState extends State<MobileContactPage> {
  var width;
  var height;
  var utilityProvider;
  var themeProvider;
  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    utilityProvider = Provider.of<UtilityProvider>(context);
    themeProvider = Provider.of<ThemeProvider>(context);
    scrollController = utilityProvider.getScrollController();
    return Container(
      width: width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromRGBO(222, 225, 229, 1), Colors.blue[100]],
      )), //height: height,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 60,
          ),
          emailContactWidget(200, 0.8 * width, 16, 20),
          SizedBox(
            height: 60,
          ),
          websiteIcon(scrollController),
          SizedBox(
            height: 60,
          ),
          navBarItems(scrollController),
          SizedBox(
            height: 60,
          ),
          footerWidget(themeProvider, scrollController)
        ],
      ),
    );
  }
}

Widget emailContactWidget(double height, double width, double sayHelloFontSize,
    double emailIDFontSize) {
  return Material(
    color: Color.fromRGBO(255, 255, 255, 0.3),
    borderRadius: BorderRadius.circular(16),
    child: Container(
      height: height,
      width: width,
      //color: Colors.white,
      padding: EdgeInsets.all(32),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            kContactCardTitle,
            style: GoogleFonts.varelaRound(
                fontSize: sayHelloFontSize, color: Colors.blueGrey[400]),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width * 0.3,
                child: TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: " pegas.main@gmail.com",

                  ),
                ),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Container(
              width: width * 0.3,
              child: TextField(
                // obscureText: true,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  fillColor: Colors.blue,
                  focusColor: Colors.blue,
                  hoverColor: Colors.blue,
                  border: OutlineInputBorder(

                  ),
                  labelText: 'Phone',
                  hintText: " +1(999)999-99-99",
                ),
                ),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              MaterialButton(
                  hoverElevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 26),
                  color: Colors.blue[400],
                  child: Text(
                    kViewAllWork,
                    style: GoogleFonts.varelaRound(
                        color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () async {}),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget footerWidget(
    ThemeProvider themeProvider, ScrollController scrollController) {
  return Container(
    height: 100,
    color: Colors.grey.withOpacity(0.1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      kRightsReserved,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: Colors.blueGrey[800]),
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 20.0),
            //   child: Row(
            //     //mainAxisSize: MainAxisSize.max,
            //     //mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       IconButton(
            //           icon: Icon(Icons.border_left_outlined),
            //           onPressed: () async {
            //             await scrollController.animateTo(
            //                 scrollController.position.minScrollExtent,
            //                 duration: Duration(seconds: 1),
            //                 curve: Curves.ease);
            //             themeProvider.toggleTheme();
            //           }),
            //     ],
            //   ),
            // )
          ],
        ),
      ],
    ),
  );
}
//
// Widget iconBarWidget() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     mainAxisSize: MainAxisSize.max,
//     children: [
//       iconWidget('linkedin'),
//       SizedBox(
//         width: 20,
//       ),
//       iconWidget('twitter'),
//       SizedBox(
//         width: 20,
//       ),
//       iconWidget('github'),
//     ],
//   );
// }

Widget websiteIcon(ScrollController scrollController) {
  return InkWell(
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: () async {
      await scrollController.animateTo(
          scrollController.position.minScrollExtent,
          duration: Duration(seconds: 1),
          curve: Curves.ease);
    },
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "lib/icons/pegas.svg",
          width: 34,
        ),
        SizedBox(
          width: 8,
        ),
        SvgPicture.asset(
          "lib/icons/solutions.svg",
          width: 140,
        )
      ],
    ),
  );
}

Widget navBarItems(ScrollController scrollController) {
  return Row(
    // mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      navBarOptions(sAbout, 1, () {
        scrollController.animateTo(
          0.4 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      SizedBox(
        width: 40,
      ),
      navBarOptions(sServices, 2, () {
        scrollController.animateTo(
          0.8 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      SizedBox(
        width: 40,
      ),
      navBarOptions(sPortfolio, 3, () {
        scrollController.animateTo(
          0.60 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      SizedBox(
        width: 40,
      ),
      navBarOptions(sContact, 4, () {
        scrollController.animateTo(
          1 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
    ],
  );
}

Widget navBarOptions(String title, int position, Function function) {
  return InkWell(
    onTap: function,
    //hoverColor: Colors.grey[200],
    borderRadius: BorderRadius.circular(16),
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Text(
        title,
        // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        style: GoogleFonts.varelaRound(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.blueGrey[800]),
      ),
    ),
  );
}
