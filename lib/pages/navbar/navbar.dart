import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegas_solutions/providers/utility_provider.dart';
import 'package:pegas_solutions/utilities/strings.dart';
import 'package:provider/provider.dart';

class TopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatefulWidget {
  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  var utilityProvider;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
        child: Container(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Flexible(child: websiteIcon(scrollController)),
              Flexible(child: navBarItems(scrollController)),
            ])));
  }
}

class MobileNavbar extends StatefulWidget {
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  var utilityProvider;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    scrollController = utilityProvider.getScrollController();

    return Container(
        child: Column(
      children: [
        // Container(
        //   alignment: Alignment.center,
        //   child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
        //       child: websiteIcon()),
        // ),
        //
        SizedBox(
          height: 20,
        ),
        navBarItems(scrollController)
      ],
    ));
  }
}

Widget websiteIcon(ScrollController scrollController) {
  return GestureDetector(
    onTap: () {
      scrollController.animateTo(
        0.4 * scrollController.position.maxScrollExtent,
        duration: Duration(seconds: 1),
        curve: Curves.ease,
      );
    },
    child: Padding(
      padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
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
      ),
  );
}

Widget navBarItems(ScrollController scrollController) {
  return Row(
    // mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // SvgPicture.asset("lib/icons/pegas.svg", width: 45,),
      navBarOptions(sAbout, 1, () {
        scrollController.animateTo(
          0.4 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      navBarOptions(sServices, 2, () {
        scrollController.animateTo(
          0.75 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      navBarOptions(sPortfolio, 3, () {
        scrollController.animateTo(
          0.55 * scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 2),
          curve: Curves.ease,
        );
      }),
      navBarOptions(sContact, 4, () {
        scrollController.animateTo(
          0.9 * scrollController.position.maxScrollExtent,
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
    splashColor: Colors.blue[100],
    borderRadius: BorderRadius.circular(32),
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
      child: Text(
        title,
        // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        style: GoogleFonts.varelaRound(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Colors.blueGrey[400]),
      ),
    ),
  );
  // );
}
