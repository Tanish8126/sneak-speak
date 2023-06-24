import 'package:flutter/material.dart';

AnimatedContainer buildDot({int? index, width, color}) {
  return AnimatedContainer(
    duration: Duration.zero,
    margin: const EdgeInsets.only(right: 5),
    height: 6,
    width: width.toDouble(),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(3),
    ),
  );
}
