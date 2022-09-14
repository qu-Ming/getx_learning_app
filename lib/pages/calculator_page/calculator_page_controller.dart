import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorPageController extends GetxController {
  String numberQuestion = '';
  String numberAnswer = '0';
  final List<String> buttons = [
    "7",
    "8",
    "9",
    "*",
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
    "/",
    "=",
  ];

  onClickIconReturn(context) {
    Navigator.of(context).pop(true);
  }

  onClickedNum(index) {
    if (index == 12) {
      numberQuestion = '';
      numberAnswer = '0';
    } else if (index == 15) {
      final answer = numberQuestion;
      Parser p = Parser();
      Expression exp = p.parse(answer);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      numberAnswer = eval.toString();
      numberQuestion = numberAnswer;
    } else {
      numberQuestion += buttons[index];
    }

    update(['updateNum']);
  }

  bool changeColor(String x) {
    if (x == "*" || x == "/" || x == "=" || x == "+" || x == "-" || x == "C") {
      return false;
    }
    return true;
  }
}
