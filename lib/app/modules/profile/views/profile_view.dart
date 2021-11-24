import 'package:dirbbox/app/modules/profile/views/components/my_folder.dart';
import 'package:dirbbox/app/modules/profile/views/components/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
            color: Color(0xFF22215B),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Color(0xFF22215B),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz_outlined,
              color: Color(0xFF22215B),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: ProfileCard(),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(
                      color: Color(0xFF22215B),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFF22215B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.only(left: 25, right: 25), child: MyFolder()),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                      color: Color(0xFF22215B),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sort_by_alpha_rounded,
                    color: Color(0xFF22215B),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: SvgPicture.asset(
                    "assets/icons/word.svg",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Projects.docx",
                      style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Novemaber 22.2020",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF22215B).withOpacity(0.6),
                            ),
                          ),
                          Text(
                            "300kb",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF22215B).withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
