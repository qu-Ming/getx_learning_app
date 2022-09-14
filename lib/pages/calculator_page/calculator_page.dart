import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_app/components/text_component.dart';
import 'package:getx_learning_app/pages/calculator_page/calculator_page_controller.dart';
import 'package:getx_learning_app/utils/const/app_colors.dart';
import 'package:getx_learning_app/utils/const/app_dimens.dart';

import '../../components/button_number_component.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({Key? key}) : super(key: key);

  String question = '';
  String answer = '';
  CalculatorPageController calculatorPageController =
      Get.put(CalculatorPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            calculatorPageController.onClickIconReturn(context);
          },
          child: const Icon(
            Icons.chevron_left_rounded,
            size: AppDimens.icon_size_30,
          ),
        ),
        backgroundColor: AppColors.colorDarkRed,
      ),
      body: Column(children: [
        GetBuilder<CalculatorPageController>(
            id: "updateNum",
            builder: (context) {
              return Expanded(
                flex: 3,
                child: Container(
                  color: AppColors.colorGrey,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: TextComponent(
                            text: calculatorPageController.numberQuestion,
                            colorText: AppColors.colorBlack,
                            textSize: AppDimens.text_size_18,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextComponent(
                            fontWeight: FontWeight.bold,
                            text: calculatorPageController.numberAnswer,
                            colorText: AppColors.colorDarkRed,
                            textSize: AppDimens.icon_size_30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
        Expanded(
          flex: 7,
          child: Container(
            color: AppColors.colorGrey,
            child: GridView.builder(
                itemCount: calculatorPageController.buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return ButtonNumberComponent(
                    onTap: () {
                      calculatorPageController.onClickedNum(index);
                    },
                    buttonText: calculatorPageController.buttons[index],
                    textColor: AppColors.colorWhite,
                    color: calculatorPageController.changeColor(
                            calculatorPageController.buttons[index])
                        ? AppColors.colorLightRed
                        : AppColors.appBarColor,
                  );
                }),
          ),
        ),
      ]),
    );
  }
}
