import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            height: 209,
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 52,
                  width: 52,
                  child: SvgPicture.asset("assets/icons/profile.svg"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Muhammad Dzul Fikri Khoiruddin",
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mobile Developer Expert",
                  style: TextStyle(
                    color: Color(0xFF22215B),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF22215B).withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              height: 20,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFFFF317B),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "PRO",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
