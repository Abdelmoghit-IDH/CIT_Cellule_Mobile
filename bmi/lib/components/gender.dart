import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({
    @required this.icon,
    @required this.gender,
    Key key,
  }) : super(key: key);

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Icon(
            icon,
            size: 70,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            gender,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
