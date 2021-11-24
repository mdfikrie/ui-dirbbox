import 'package:dirbbox/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TitleBody extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Your Dribbbox",
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFF22215B),
            fontWeight: FontWeight.w700,
          ),
        ),
        InkWell(
          onTap: () {
            controller.transX.value = 0.0;
          },
          child: Container(
            height: 19,
            width: 19,
            child: SvgPicture.asset("assets/icons/menu.svg"),
          ),
        ),
      ],
    );
  }
}
