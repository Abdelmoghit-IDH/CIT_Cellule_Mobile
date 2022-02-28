import 'package:bmi/const.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    this.onClick,
    this.child,
    Key key,
  }) : super(key: key);

  final Function onClick;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        color: klightBlue,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: child,
      ),
    );
  }
}