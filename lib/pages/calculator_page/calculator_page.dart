import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getx_learning_app/components/button_number_component.dart';
import 'package:getx_learning_app/components/text_component.dart';
import 'package:getx_learning_app/utils/const/app_colors.dart';
import 'package:getx_learning_app/utils/const/app_dimens.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.chevron_left_rounded,
          size: AppDimens.icon_size_30,
        ),
        backgroundColor: AppColors.colorDarkRed,
      ),
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Container(
            color: AppColors.colorGrey,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Align(
                      alignment: Alignment.topRight,
                      child: TextComponent(
                        text: '1+1',
                        colorText: AppColors.colorBlack,
                        textSize: AppDimens.text_size_18,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextComponent(
                        fontWeight: FontWeight.bold,
                        text: '2',
                        colorText: AppColors.colorDarkRed,
                        textSize: AppDimens.icon_size_30,
                      ),
                    )
                  ]),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            color: AppColors.colorGrey,
            child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return ButtonNumberComponent(
                    buttonText: buttons[index],
                    textColor: AppColors.colorWhite,
                    color: AppColors.colorDarkRed,
                  );
                }),
          ),
        ),
      ]),
    );
  }
}
