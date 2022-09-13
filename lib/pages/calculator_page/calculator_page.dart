import 'package:flutter/material.dart';
import 'package:getx_learning_app/utils/const/app_colors.dart';
import 'package:getx_learning_app/utils/const/app_dimens.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

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
      backgroundColor: AppColors.colorLightRed,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            color: AppColors.colorDarkRed,
          ),
        ],
      ),
    );
  }
}
