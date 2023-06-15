import 'package:brain_school_starter/constants.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar theme for tablet
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          InkWell(
            onTap: () {
              //send report to school management, in case if you want some changes to your profile
            },
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [
                  Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizedBox,
                  Text(
                    'Report',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding)
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius:50,
                    minRadius:50,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('assets/images/student_profile.jpg'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        's perera',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text('Class A',
                          style: Theme.of(context).textTheme.titleSmall),
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Registration Number', value: '2020-ASDF-2021'),
                ProfileDetailRow(title: 'Academic Year', value: '2020-2021'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(title: 'Admission Class', value: 'X-II'),
                ProfileDetailRow(title: 'Admission Number', value: '000126'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileDetailRow(
                    title: 'Date of Admission', value: '1 Aug, 2020'),
                ProfileDetailRow(title: 'Date of Birth', value: '3 May 1998'),
              ],
            ),
            sizedBox,
            ProfileDetailColumn(
              title: 'Email',
              value: 'aisha12@gmail.com',
            ),
            ProfileDetailColumn(
              title: 'Father Name',
              value: 'John Mirza',
            ),
            ProfileDetailColumn(
              title: 'Mother Name',
              value: 'Angelica Mirza',
            ),
            ProfileDetailColumn(
              title: 'Phone Number',
              value: '+923066666666',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: kTextBlackColor,
                  fontSize: 15.0,
                ),
              ),
              kHalfSizedBox,
              Text(value, style: Theme.of(context).textTheme.bodySmall),
              kHalfSizedBox,
              kHalfSizedBox,
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: kTextBlackColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kHalfSizedBox,
              Text(value, style: Theme.of(context).textTheme.bodySmall),
              kHalfSizedBox,
             kHalfSizedBox,
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20,
          ),
        ],
      ),
    );
  }
}
