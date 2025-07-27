import 'package:flutter/material.dart';
import 'package:mvvm/utils/custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.name,
    this.width = 100,
    this.height = 50,
    this.color = const Color(0xFF6200EE),
    this.borderRadius = 8.0,
    this.textSize = 16.0,
    this.textWeight = FontWeight.normal,
    this.onTap,
    this.textcolor = Colors.white,
  });

  final String name;
  final double width;
  final double height;
  void Function()? onTap;
  final Color color;
  final double borderRadius;
  final double textSize;
  final FontWeight textWeight;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: CustomText(
            name: name,
            size: textSize,
            fontWeight: textWeight,
            colors: textcolor,
          ),
        ),
      ),
    );
  }
}
