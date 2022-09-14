import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_app/pages/calculator_page/calculator_page.dart';
import 'package:getx_learning_app/pages/random_page/random_page.dart';

import '../date_page/date_page.dart';

class HomePageController extends GetxController {
  onClickedRandomPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => const RandomPage())));
    update(["toRandomPage"]);
  }

  onClickedCalculatorPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CalculatorPage()));
    update(["toCalculatroPage"]);
  }

  onClickedDatePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DatePage()));
    update(["toDatePage"]);
  }
}
