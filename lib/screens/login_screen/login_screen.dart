import 'package:brain_school_starter/components/custom_buttons.dart';
// import 'package:brain_school/constants.dart';
// import 'package:brain_school/screens/home_screen/home_screen.dart';
import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/screens/home_Screen/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validation

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 10), (){
      //no return when user is on login screen and press back, it will not return the
      //user to the splash screen
      Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
    });
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/splash.png',
                  height: 150.0,
                  width: 150.0,
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Learn',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'Ease',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text('Sign up for continue',
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 3),
                topRight: Radius.circular(kDefaultPadding * 3),
              ),
              color: kOtherColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Form(
                    child: Column(
                      key: _formKey,
                      children: [
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                        buildEmailField(), //email
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                        buildPasswordField(),
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                        DefaultButton(
                          onPress: () {

                            if (_formKey.currentState!.validate()) {//next act
                            }
                          },
                          title: 'SIGN IN',
                          iconData: Icons.arrow_forward_outlined,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'Mobile Number or Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regexp = RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return ("Enter login info");
        } else if (!regexp.hasMatch(value)) {
          return ("Enter a Valid Email Address");
        }
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(
            _passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_off_outlined,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 8) {
          return ("Enter more than 8 characters");
        }
      },
    );
  }
}
