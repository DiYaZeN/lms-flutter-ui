import 'package:brain_school_starter/constants.dart';
import 'package:flutter/material.dart';


class StudentName extends StatelessWidget {
  const StudentName({Key? key, required this.studentName}) : super(key: key);
  final String studentName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Hi ', style: Theme.of(context).textTheme.titleMedium),
        Text(studentName, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}

class StudentClass extends StatelessWidget {
  const StudentClass({Key? key, required this.studentClass}) : super(key: key);
  final String studentClass;
  @override
  Widget build(BuildContext context) {
    return Text(studentClass, style: Theme.of(context).textTheme.titleSmall);
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({Key? key, required this.studentYear}) : super(key: key);

  final String studentYear;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Center(
        child: Text(
          studentYear,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: kTextBlackColor,
          ),
        ),
      ),
    );
  }
}

class StudentPicture extends StatelessWidget {
  const StudentPicture(
      {Key? key, required this.picAddress, required this.onPress})
      : super(key: key);
  final String picAddress;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 50.0,
        maxRadius: 50.0,
        backgroundColor: kSecondaryColor,
        backgroundImage:
        AssetImage('assets/images/student_profile.jpg'),
      ),
    );
  }
}

class StudentDataCard extends StatelessWidget {
  const StudentDataCard(
      {Key? key,
        required this.title,
        required this.value,
        required this.onPress})
      : super(key: key);
  final String title;
  final String value;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(
                color: kTextBlackColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(
                color: kTextBlackColor,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
