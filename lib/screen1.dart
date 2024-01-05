import 'package:flutter/material.dart';
import 'package:interview/widgits/location.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double heightRatio = size.height / 780;
    final double widthRatio = size.width / 360;
    String location = "KPHB Phase 5";

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Location(
              location: location,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 328 * widthRatio * heightRatio,
              child: Text(
                'Scan Receipt',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.800000011920929),
                  fontSize: 16 * heightRatio * widthRatio,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              width: 328 * widthRatio * heightRatio,
              child: Text(
                'Tap on the store to start scanning the receipt.',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4000000059604645),
                  fontSize: 12 * widthRatio * heightRatio,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 12 * heightRatio,
            ),
            Container(
              width: 328 * widthRatio,
              height: 34 * heightRatio,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.1599999964237213),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24 * widthRatio,
                    height: 24 * heightRatio,
                    child: Stack(
                      children: [
                        Image.asset("images/Search.png"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        'Search any store name',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4000000059604645),
                          fontSize: 12 * widthRatio * heightRatio,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10 * heightRatio,
            ),
            Row(
              children: [
                Container(
                    width: 50 * widthRatio,
                    height: 50 * heightRatio,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFFEBEDFB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                        child: Icon(Icons.photo_camera_front,
                            color: Color(0xFF5764DA)))
                    // Image.asset(
                    //   'images/326700_cart_shopping_icon.png',
                    //   color: Color(0xFF5764DA),
                    // ),
                    ),
                SizedBox(
                  width: 10 * widthRatio,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upload any Bill',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.800000011920929),
                        fontSize: 14 * heightRatio * widthRatio,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      height: 2 * heightRatio,
                    ),
                    Text(
                      'Earn upto 10% cashback on any store',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6000000238418579),
                        fontSize: 10 * widthRatio * heightRatio,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10 * widthRatio,
                ),
                Container(
                  width: 63 * widthRatio,
                  height: 30 * heightRatio,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: ShapeDecoration(
                    color: Color(0xFF5764DA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Scan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12 * widthRatio * heightRatio,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16 * widthRatio),
              child: Text(
                '98 Stores',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.800000011920929),
                  fontSize: 16 * widthRatio * heightRatio,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
