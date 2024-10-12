import 'package:bismillah/constant.dart';
import 'package:flutter/material.dart';

class RoundBut extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const RoundBut({Key? key, 
  required this.title, 
  required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: kDarkColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: kDarkColor),
          ),
        ),
      ),
    );
  }
}