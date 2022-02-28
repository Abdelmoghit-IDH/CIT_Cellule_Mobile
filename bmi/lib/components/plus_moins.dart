import 'package:bmi/const.dart';
import 'package:flutter/material.dart';

class PlusMoins extends StatefulWidget {
  const PlusMoins({
    @required this.name,
    @required this.number,
    Key key,
  }) : super(key: key);

  final String name;
  final int number;

  @override
  State<PlusMoins> createState() => _PlusMoinsState();
}

class _PlusMoinsState extends State<PlusMoins> {
  int nombre;

  @override
  void initState() {
    super.initState();
    nombre = widget.number;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "$nombre",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularButton(
                icon: "+",
                onClick: () {
                  setState(() {
                    nombre++;
                    print("the value of number is: $nombre");
                  });
                },
              ),
              CircularButton(
                icon: "-",
                onClick: () {
                  setState(() {
                    nombre--;
                    print("the value of number is: $nombre");
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton({
    @required this.icon,
    @required this.onClick,
    Key key,
  }) : super(key: key);

  final String icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: kdarkBlue,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            icon,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
