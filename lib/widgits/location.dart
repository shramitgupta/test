import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  String location = '';
  Location({super.key, required this.location});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double heightRatio = size.height / 780;
    final double widthRatio = size.width / 360;
    return Container(
        width: 140 * widthRatio,
        height: 28 * heightRatio,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: ShapeDecoration(
          color: Color(0xFFF3E7FD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 2 * widthRatio,
              ),
              Container(
                width: 13.33 * widthRatio,
                height: 17.33 * heightRatio,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/Location.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 2 * widthRatio,
              ),
              Text(
                widget.location,
                style: TextStyle(
                  color: Color(0xFF7F309B),
                  fontSize: 12 * widthRatio * heightRatio,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              Image.asset("images/Down.png")
            ]));
  }
}
