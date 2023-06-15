import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/screens/home_Screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:brain_school_starter/screens/login_screen/login_screen.dart';
import 'package:brain_school_starter/screens/home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  //route name for our screen
  static String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  //const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 5), (){
      //no return when user is on login screen and press back, it will not return the
      //user to the splash screen
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    });

    //scaffold color set to primary color in main in our text theme
    return Scaffold(
      //its a row with a column
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Learn', style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: kTextWhiteColor,
                  fontSize: 50.0,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                )),
                Text('Ease', style: GoogleFonts.lato(
                  color: kTextWhiteColor,
                  fontSize: 50.0,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2.0,
                )),
              ],
            ),
            Image.asset("assets/images/splash.png",height:150.0,width: 150.0,)
          ],
        ),
      ),
    );
  }
}

