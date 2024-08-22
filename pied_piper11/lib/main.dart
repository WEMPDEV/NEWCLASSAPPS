import 'package:flutter/material.dart';
import 'package:pied_piper11/FutBuilder.dart';
import 'package:pied_piper11/StreamBuild.dart';
import 'package:pied_piper11/ThemeNotifier.dart';
import 'package:pied_piper11/generated/praticeSqfliteHelper.dart';
import 'package:pied_piper11/mySqfliteUi.dart';
import 'package:pied_piper11/responsiveuiclasswork.dart';
import 'package:pied_piper11/showWidgetScaffold.dart';
import 'package:pied_piper11/tabBars.dart';
import 'package:pied_piper11/weatherApp.dart';
import 'package:provider/provider.dart';
import 'CreateAccountScreen.dart';
import 'InputandDailog.dart';
import 'LoginAcountScreen.dart';
import 'OTP.dart';
import 'Responsive.dart';
import 'Stackss.dart';
import 'flutterButton.dart';
import 'form.dart';
import 'myprofile.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder:  (context, themmeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themmeNotifier.isDarkMode ? ThemeMode.dark : ThemeMode.light,
            //  home: basic(),
            //   home: showWidgetTree(),
            // home: SingleChildWidget(),
            // home: MultiChildLayout(),
            //  home: bottomNavBar(),
            // home: tabBars(),
            // home: myprofile(),
            //home: myListTile(),
            //  home: flutterButton(),
            // home: InputandDailog(),
            //  routes: {'/emma': (context) => myprofile()},
            //  home: IndependentWidget(),
            //  home: Scrollable(),
            //  home: testt(),
            //  home: MyForm(),
            //  home: MyAppe(),
            // home: FutBuilder(),
            //  home: SingleLayoutApp(),
            //  home: pratice(),
            //  home: Stackss(),
            //  routes: {'/sign':()=> bottomNavBar(),
            //  home: Tripapp(),
            // home: weatherApp(),
            // // //  home: ImageChecker(),
            home: AccountLogin(),
            routes: {
               '/signup': (context) => AccountScreen(),
              '/Otp': (context) => OTP(),
              '/profile': (context) => myprofile(),
              '/signin': (context) => AccountLogin(),
              'demo': (context) => InputandDailog(),
              '/Logout': (context) => showWidgetScaffold(),
            }
            // home: ResponsiveScreen(),
            // home: responsiveui(),
            // home: mediaquery(),
            // home: FutBuilder(),
            // home: const Streambuild(),
            // home: mySqfliteUi(),
            // home: PraticesqflitehelperUi(),
          );
        },
    );
  }
}

