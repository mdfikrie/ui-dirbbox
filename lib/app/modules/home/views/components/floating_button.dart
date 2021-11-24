import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: Material(
        color: Color(0xFF22215B),
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.add,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
