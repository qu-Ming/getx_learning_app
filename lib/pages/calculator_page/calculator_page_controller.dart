import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPageController extends GetxController {
  String number = '';
  final List<String> buttons = [
    "7",
    "8",
    "9",
    "X",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "C",
    "0",
    ".",
    "=",
  ];

  onClickIconReturn(context) {
    Navigator.of(context).pop(true);
  }

  onClickedNum(int index) {
    if (number == buttons[12]) {
      print(number);
    } else {
      number += buttons[index];
    }

    update(['updateNum']);
  }
}
