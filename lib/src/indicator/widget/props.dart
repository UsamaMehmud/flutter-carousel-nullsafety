import 'package:flutter/material.dart';

class Props {
  final int currentPage;
  final Color selectedColor;
  final Color unSelectedColor;
  final int totalPage;
  final double width;
  final PageController controller;
  Props(
      {
      required this.totalPage,
        required this.selectedColor,
        required this.unSelectedColor,
        required this.currentPage,
        required this.width,
        required this.controller
      });
}
