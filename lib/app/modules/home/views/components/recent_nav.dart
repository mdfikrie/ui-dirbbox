import 'package:flutter/material.dart';

class RecentNav extends StatelessWidget {
  const RecentNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Recent",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF22215B),
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFF22215B),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.menu,
              color: Color(0xFFB0C0D0),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.window,
            )
          ],
        ),
      ],
    );
  }
}
