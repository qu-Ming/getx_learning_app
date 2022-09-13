import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RandomPageController extends GetxController {
  get radomNum => null;

  onClickIconReturn(context) {
    Navigator.of(context).pop(true);
  }

  cancelKeyBoard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  randomEnter(int min, int max, Function callBack) {
    if (max.bitLength == 0 || min.bitLength == 0) {
      callBack(errorText());
    } else if (max - min < 0) {
      callBack(errorText());
    } else {
      int randomNum = (min) + Random().nextInt((max + 1 - min));
      callBack(randomNum);
    }

    update(["randomNumber"]);
  }

  String errorText() {
    String errorText = "Syntax error";
    return errorText;
  }
}
