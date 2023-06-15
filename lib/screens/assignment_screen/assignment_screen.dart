import 'package:brain_school_starter/constants.dart';
import 'package:flutter/material.dart';

import 'data/assignment_data.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({Key? key}) : super(key: key);
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),

                ),
              ),
              child: ListView.builder(
                  padding: EdgeInsets.all(kDefaultPadding),
                  itemCount: assignment.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(kDefaultPadding),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(kDefaultPadding),
                              color: kOtherColor,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.4),
                                    borderRadius:
                                    BorderRadius.circular(kDefaultPadding),
                                  ),
                                  child: Center(
                                    child: Text(
                                      assignment[index].subjectName,
                                      style: Theme.of(context).textTheme.caption,
                                    ),
                                  ),
                                ),
                                kHalfSizedBox,
                                Text(
                                  assignment[index].topicName,
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                kHalfSizedBox,
                                AssignmentDetailRow(
                                  title: 'Assign Date',
                                  statusValue: assignment[index].assignDate,
                                ),
                                kHalfSizedBox,
                                AssignmentDetailRow(
                                  title: 'Last Date',
                                  statusValue: assignment[index].lastDate,
                                ),
                                kHalfSizedBox,
                                AssignmentDetailRow(
                                  title: 'Status',
                                  statusValue: assignment[index].status,
                                ),
                                kHalfSizedBox,
                                //use condition here to display button
                                if (assignment[index].status == 'Pending')
                                //then show button
                                  AssignmentButton(
                                    onPress: () {
                                      //submit here
                                    },
                                    title: 'To be Submitted',
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}


class AssignmentDetailRow extends StatelessWidget {
  const AssignmentDetailRow({Key? key, required this.title, required this.statusValue}) : super(key: key);
  final String title;
  final String statusValue;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: kTextLightColor),
          ),
        Text(
          statusValue,
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: kTextLightColor),
        ),
      ],
    );
  }
}


class AssignmentButton extends StatelessWidget {
  const AssignmentButton({Key? key, required this.title, required this.onPress}) : super(key: key);
  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [kSecondaryColor,kPrimaryColor],
            begin: const FractionalOffset(0.0, 0.0),
            end:const FractionalOffset(0.5, 0.0) ,
            stops: [0.0,1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Center(child: Text('Submit',style: Theme.of(context).textTheme.titleSmall!.copyWith(
          fontWeight:FontWeight.w500 ,
          fontSize: 16.0,
        ) ,
          ),
        ),
      ),
    );
  }
}
