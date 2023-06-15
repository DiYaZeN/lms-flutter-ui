import 'package:brain_school_starter/constants.dart';
import 'package:brain_school_starter/screens/assignment_screen/assignment_screen.dart';
import 'package:brain_school_starter/screens/home_screen/widgets/student_data.dart';
import 'package:brain_school_starter/screens/my_profile/my_profile.dart';
// import 'package:brain_school_starter/screens/assignment_screen/assignment_screen.dart';
// import 'package:brain_school_starter/screens/fee_screen/fee_screen.dart';
// import 'package:brain_school/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:sizer/sizer.dart';
// import 'widgets/student_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(studentName: 'S.Perera'),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        StudentClass(studentClass: 'class A'),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        StudentYear(studentYear: '2019/2020')
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding / 6,
                    ),
                    StudentPicture(picAddress: 'assets/images/student_profile.jpg', onPress: (){
                      Navigator.pushNamed(context, MyProfileScreen.routeName);
                      //navigate to profile
                    })


                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(title: 'Attendance', value: '100%', onPress: (){}),
                    StudentDataCard(title: 'G.P.A', value: '4.0', onPress: (){}),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: (){}, icon: 'assets/icons/quiz.svg', title: 'Quiz',
                        ),
                        HomeCard(
                          onPress: (){
                            Navigator.pushNamed(context, AssignmentScreen.routeName);
                          }, icon: 'assets/icons/assignment.svg', title: 'Assignment',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: (){}, icon: 'assets/icons/holiday.svg', title: 'Holidays',
                        ),
                        HomeCard(
                          onPress: (){}, icon: 'assets/icons/timetable.svg', title: 'Time Table',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: (){}, icon: 'assets/icons/result.svg', title: 'Results',
                        ),
                        HomeCard(
                          onPress: (){}, icon: 'assets/icons/datesheet.svg', title: 'DataSheet ',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: (){}, icon: 'assets/icons/event.svg', title: 'Events',
                        ),
                        HomeCard(
                          onPress: (){}, icon: 'assets/icons/logout1.svg', title: 'Logout ',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 40.0,
              width: 40.0,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: kDefaultPadding / 3),
          ],
        ),
      ),
    );
  }
}
