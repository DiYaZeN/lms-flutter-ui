import 'package:flutter/material.dart';
import 'package:brain_school_starter/constants.dart';

class DefaultButton extends StatelessWidget {
  // const DefaultButton({
  //   super.key,
  // });

  final VoidCallback onPress;
  final String title ;
  final IconData iconData;

  const DefaultButton({super.key, required this.onPress, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        padding: EdgeInsets.only(right: kDefaultPadding),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Sign In',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_outlined,
              size: 30.0,
              color: kOtherColor,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}