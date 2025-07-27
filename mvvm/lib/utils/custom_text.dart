import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.name,
    this.size = 12,
    this.colors = const Color(0xFF000000),
    this.fontWeight = FontWeight.normal,
  });

  final String name;
  final double size;
  final Color colors;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: colors),
    );
  }
}
