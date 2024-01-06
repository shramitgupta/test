import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      height: 19,
      padding: const EdgeInsets.only(top: 2, left: 5, right: 7, bottom: 2),
      decoration: ShapeDecoration(
        color: Color(0xFFFDF3D8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 15,
            height: 15,
            decoration: ShapeDecoration(
              color: Color(0xFFF48A00),
              shape: StarBorder(
                points: 5,
                innerRadiusRatio: 0.0,
                pointRounding: 1,
                valleyRounding: 0,
                rotation: 0,
                squash: 0,
              ),
            ),
          ),
          const SizedBox(width: 4),
          Text(
            'Premium',
            style: TextStyle(
              color: Color(0xFFF48A00),
              fontSize: 10,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
