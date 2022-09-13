import 'package:flutter/material.dart';
import 'package:getx_learning_app/components/text_component.dart';
import 'package:getx_learning_app/utils/const/app_dimens.dart';

class ButtonNumberComponent extends StatelessWidget {
  const ButtonNumberComponent(
      {Key? key, this.buttonText, this.color, this.textColor})
      : super(key: key);

  final String? buttonText;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Center(
          child: TextComponent(
            colorText: textColor,
            text: buttonText.toString(),
            textSize: AppDimens.text_size_16,
          ),
        ),
      ),
    );
  }
}
