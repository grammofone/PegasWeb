import 'package:flutter/material.dart';
import 'package:pegas_solutions/pages/navbar/navbar.dart';
import 'package:pegas_solutions/pages/aboutpage/about_page.dart';
import 'package:pegas_solutions/pages/portfoliopage/portfolio_page.dart';
import 'package:pegas_solutions/pages/servicespage/services_page.dart';
import 'package:pegas_solutions/pages/contactpage/contact_page.dart';
import 'package:pegas_solutions/utilities/strings.dart';
import 'package:provider/provider.dart';
import 'package:pegas_solutions/providers/utility_provider.dart';
import 'package:pegas_solutions/widgets/logo_widget.dart' as Logo;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var utilityProvider;
  var width;
  var height;

  //portfolio images
  Image uiIconImage;
  Image mobileIconImage;
  Image webIconImage;

  //work images
  Image work1Image;
  Image work2Image;
  Image work3Image;
  Image work4Image;

  bool isSplashVisible = true;
  final List pageList = [
    TopNavbar(),
    AboutPage(),
    ServicesPage(),
    PortfolioPage(),
    ContactPage()
  ];

  @override
  void initState() {
    super.initState();
    // initializing the asset images
    uiIconImage = Image.asset('lib/icons/pen.png');
    mobileIconImage = Image.asset('lib/icons/mob_dev.png');
    webIconImage = Image.asset('lib/icons/web.png');


    work3Image = Image.asset(kWorkImageUrl3);


    //SplashScreen Animation
    Future.delayed(
      Duration(seconds: 1),
    ).then((value) {
      setState(() {
        isSplashVisible = false;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //pre caching images for faster load time of website
    precacheImage(uiIconImage.image, context);
    precacheImage(mobileIconImage.image, context);
    precacheImage(webIconImage.image, context);


    precacheImage(work3Image.image, context);
  }

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return isSplashVisible
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo.websiteIcon(),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        : ListView.builder(
            controller: utilityProvider.getScrollController(),
            physics: BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return pageList[index];
            });
  }
}
