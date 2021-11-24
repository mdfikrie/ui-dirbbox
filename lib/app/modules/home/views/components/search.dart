import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEEF2FE), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Folder",
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color(0xFF22215B),
          ),
          icon: SvgPicture.asset("assets/icons/search.svg"),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
