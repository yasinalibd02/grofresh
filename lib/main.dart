import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_framework.dart';

import 'screen/homepage.dart';

void main(){
  runApp(GroFresh());
}

class GroFresh extends StatelessWidget {
  const GroFresh({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

       builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
       ),
           
       



       title: "GROFresh",
  theme: ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.green,

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic,color: Colors.green),
      bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Hind',fontWeight:FontWeight.w500,color: Colors.white),
    ),
  ),
      debugShowCheckedModeBanner: false,
      home:homePage() ,
      
    );
  }
}


