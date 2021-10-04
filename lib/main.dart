import 'package:flutter/material.dart';
import 'package:skeleton_pt/src/pages/home_page.dart';
import 'package:skeleton_pt/src/pages/info_page.dart';
import 'package:skeleton_pt/src/pages/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: OnBoardingPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "home": (context) => OnBoardingPage(),
        "vistaAPI": (context) => InfoPage()
      },
      // home: Onboarding(
      //   proceedButtonStyle: ProceedButtonStyle(
      //     proceedButtonRoute: (context) {
      //       return Navigator.pushAndRemoveUntil(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => Container(),
      //         ),
      //         (route) => false,
      //       );
      //     },
      //   ),
      //   pages: onboardingPagesList,
      //   isSkippable: false,
      //   indicator: Indicator(
      //       indicatorDesign: IndicatorDesign.polygon(
      //           polygonDesign: PolygonDesign(
      //               polygon: DesignType.polygon_square, polygonSpacer: 13.0))),
      // ),
    );
  }

  // final onboardingPagesList = [
  //   PageModel(
  //     widget: Column(
  //       children: [
  //         Container(
  //             padding: EdgeInsets.only(bottom: 45.0),
  //             child: Image.asset('assets/images/facebook.png',
  //                 color: pageImageColor)),
  //         Container(
  //             width: double.infinity,
  //             child: Text('SECURED BACKUP', style: pageTitleStyle)),
  //         Container(
  //           width: double.infinity,
  //           child: Text(
  //             'Keep your files in closed safe so you can\'t lose them',
  //             style: pageInfoStyle,
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  //   PageModel(
  //     widget: Column(
  //       children: [
  //         Image.asset('assets/images/twitter.png', color: pageImageColor),
  //         Text('CHANGE AND RISE', style: pageTitleStyle),
  //         Text(
  //           'Give others access to any file or folder you choose',
  //           style: pageInfoStyle,
  //         )
  //       ],
  //     ),
  //   ),
  //   PageModel(
  //     widget: Column(
  //       children: [
  //         Image.asset('assets/images/instagram.png', color: pageImageColor),
  //         Text('EASY ACCESS', style: pageTitleStyle),
  //         Text(
  //           'Reach your files anytime from any devices anywhere',
  //           style: pageInfoStyle,
  //         ),
  //       ],
  //     ),
  //   ),
  // ];
}
