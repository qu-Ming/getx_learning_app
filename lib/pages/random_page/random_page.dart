import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/text_component.dart';
import '../../components/textfield_component.dart';
import '../../utils/const/app_colors.dart';
import '../../utils/const/app_dimens.dart';
import 'random_page_controller.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RandomPageController nextPageController = Get.put(RandomPageController());
    TextEditingController fNum = TextEditingController();
    TextEditingController lNum = TextEditingController();

    String title = '0';
    String title2 = '';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          RandomPageController().cancelKeyBoard();
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.colorWhite,
            appBar: AppBar(
              backgroundColor: AppColors.colorOrange,
              centerTitle: true,
              leading: GestureDetector(
                onTap: () {
                  RandomPageController().onClickIconReturn(context);
                },
                child: const Icon(
                  Icons.chevron_left_rounded,
                  size: AppDimens.icon_size_30,
                ),
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColors.colorWhite,
                      ),
                      child: GetBuilder<RandomPageController>(
                          id: "randomNumber",
                          builder: (context) {
                            return Column(
                              children: [
                                TextComponent(
                                  text: title2.isEmpty ? title : title2,
                                  colorText: AppColors.colorBlack,
                                  fontWeight: FontWeight.bold,
                                  textSize: 80.0,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60.0, vertical: 10.0),
                                  child: TextFieldComponent(
                                    textEditingController: fNum,
                                    text: 'First number',
                                    textInputType: TextInputType.number,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60.0),
                                  child: TextFieldComponent(
                                    textEditingController: lNum,
                                    text: 'Last number',
                                    textInputType: TextInputType.number,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  height: 50,
                                  width: 200,
                                  color: AppColors.colorBlue,
                                  child: Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        nextPageController.randomEnter(
                                            int.parse(fNum.text),
                                            int.parse(lNum.text), (result) {
                                          title2 = result.toString();
                                        });
                                      },
                                      child: const TextComponent(
                                        text: 'Enter',
                                        colorText: AppColors.colorWhite,
                                        textSize: AppDimens.text_size_16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
