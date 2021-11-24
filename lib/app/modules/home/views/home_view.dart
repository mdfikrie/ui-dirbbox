import 'package:dirbbox/app/modules/home/views/components/recent_nav.dart';
import 'package:dirbbox/app/modules/home/views/components/title.dart';
import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/floating_button.dart';
import 'components/folder.dart';
import 'components/search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: TitleBody(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: Search(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: RecentNav(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: Folder(),
                ),
              ],
            ),
            FloatingButton(),
            Obx(
              () => AnimatedContainer(
                height: Get.height,
                width: Get.width,
                padding: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                ),
                duration: Duration(milliseconds: 300),
                transform: Matrix4.translationValues(
                    -controller.transX.toDouble(), 0.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 107,
                          width: Get.width * 0.5,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(53),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/icons/profile.svg"),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dzulfikri",
                                    style: TextStyle(
                                      color: Color(0xFF1B1D28),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Pati, Jawa Tengah",
                                    style: TextStyle(
                                      color: Color(0xFF7B7F9E),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.transX.value = 400;
                          },
                          icon: Icon(
                            Icons.close_rounded,
                            size: 28,
                            color: Color(0xFF3A4276),
                          ),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    ListTile(
                      onTap: () {
                        controller.transX.value = 400;
                      },
                      title: Text(
                        "Home",
                        style: TextStyle(
                          color: Color(0xFF1B1D28),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Get.toNamed(Routes.PROFILE);
                      },
                      title: Text(
                        "Profile",
                        style: TextStyle(
                          color: Color(0xFF1B1D28),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(
                        "Storage",
                        style: TextStyle(
                          color: Color(0xFF1B1D28),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(
                        "Shared",
                        style: TextStyle(
                          color: Color(0xFF1B1D28),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(
                        "Stats",
                        style: TextStyle(
                          color: Color(0xFF1B1D28),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(
                        "Settings",
                        style: TextStyle(
                          color: Color(0xFF1B1D28),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text(
                        "Help",
                        style: TextStyle(
                          color: Color(0xFF1B1D28),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    InkWell(
                      onTap: () {
                        Get.offNamed(Routes.LOGIN);
                      },
                      child: Container(
                        height: 25,
                        width: 76,
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("assets/icons/turn-off.svg"),
                            Text(
                              "Logout",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF1B1D28),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Version 1.0.0"),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
