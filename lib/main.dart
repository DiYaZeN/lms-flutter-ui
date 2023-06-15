import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/routes.dart';
import 'package:brain_school_starter/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnEase',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.sourceSansProTextTheme(
          Theme.of(context).textTheme.apply().copyWith(
                bodyLarge: const TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold),
            bodyMedium: const TextStyle(
                color: kTextWhiteColor,
                fontSize: 28.0,),

            titleMedium: TextStyle(
                color: kTextWhiteColor,
                fontSize: 22.0,
                fontWeight: FontWeight.w500),
                titleSmall: TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300),
              ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            fontSize: 15.0,
            color: kTextLightColor,
            height: 8.5,
          ),
          hintStyle: TextStyle(
            fontSize: 16.0,
            color: kTextBlackColor,
            height: 8.5,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
              width: 0.7,
            ),
          ),
          border: UnderlineInputBorder(
              borderSide: BorderSide(
            color: kTextLightColor,
          )),
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: kTextLightColor,
          )),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: kPrimaryColor,
          )),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: kErrorBorderColor,
            width: 1.2,
          )),
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: kErrorBorderColor,
            width: 1.2,
          )),
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
