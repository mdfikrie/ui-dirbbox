import 'package:dirbbox/app/models/myfolder_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFolder extends StatelessWidget {
  const MyFolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 5 / 4,
        crossAxisSpacing: 20,
      ),
      children: List.generate(
        folderData.length,
        (index) => Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.only(top: 10, left: 20),
          decoration: BoxDecoration(
            color: Color(folder[index].color!.toInt()),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: SvgPicture.asset(
                      folder[index].icon.toString(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 20,
                      color: Color(folder[index].font_color!.toInt()),
                    ),
                  ),
                ],
              ),
              Text(
                folder[index].name.toString(),
                style: TextStyle(
                  fontSize: 15,
                  color: Color(
                    folder[index].font_color!.toInt(),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                folder[index].date.toString(),
                style: TextStyle(
                  fontSize: 10,
                  color: Color(
                    folder[index].font_color!.toInt(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
