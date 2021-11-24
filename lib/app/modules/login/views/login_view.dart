import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: Get.width,
              child: SvgPicture.asset(
                "assets/svg/background.svg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: Get.height,
              width: Get.width,
              padding: EdgeInsets.only(top: 80, left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 185,
                    child: SvgPicture.asset(
                      "assets/svg/image.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      color: Color.fromRGBO(34, 33, 91, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "Dirbbox",
                    style: TextStyle(
                      color: Color(0xFF22215B),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 223,
                    child: Text(
                      "Best cloud storage platform for all business and individuals to manage there data\n\n\nJoin For Free.",
                      style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 50,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFF567DF4).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset("assets/svg/smart-id.svg"),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF567DF4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              Get.offNamed(Routes.HOME);
                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              alignment: Alignment.center,
                              child: SvgPicture.asset("assets/svg/sign-in.svg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Use Social Login",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        child: SvgPicture.asset(
                          "assets/svg/instagram.svg",
                          color: Color(0xFF0C0C41),
                        ),
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        child: SvgPicture.asset(
                          "assets/svg/twitter.svg",
                          color: Color(0xFF0C0C41),
                        ),
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        child: SvgPicture.asset(
                          "assets/svg/facebook.svg",
                          color: Color(0xFF0C0C41),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Create an account",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
