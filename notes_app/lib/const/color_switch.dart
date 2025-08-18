import 'package:flutter/material.dart';

Color colorName(String name) {
  switch (name.toLowerCase()) {
    case 'yellow':
      return Colors.yellow[200]!;
    case 'green':
      return Colors.green[200]!;
    case 'blue':
      return Colors.blue[200]!;
    case 'pink':
      return Colors.pink[200]!;
    case 'orange':
      return Colors.orange[200]!;
    case 'purple':
      return Colors.purple[200]!;
    default:
      return Colors.black; // fallback color
  }
}

String colorGive(Color name) {
  if (name == Colors.yellow[200]) {
    return 'yellow';
  } else if (name == Colors.green[200]) {
    return 'green';
  } else if (name == Colors.blue[200]) {
    return 'blue';
  } else if (name == Colors.pink[200]) {
    return 'pink';
  } else if (name == Colors.orange[200]) {
    return 'orange';
  } else if (name == Colors.purple[200]) {
    return 'purple';
  } else {
    return 'balac'; // fallback color
  }
}
