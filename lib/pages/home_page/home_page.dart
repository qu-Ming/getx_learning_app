import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning_app/components/container_item_component.dart';
import 'package:getx_learning_app/pages/home_page/home_page_controller.dart';
import 'package:getx_learning_app/utils/const/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appBarColor,
        toolbarHeight: 30,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.colorWhite,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: AppColors.appBarColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  children: [
                    GetBuilder<HomePageController>(
                        id: "toCalculatorPage",
                        builder: (_) {
                          return GestureDetector(
                            onTap: () {
                              homePageController
                                  .onClickedCalculatorPage(context);
                            },
                            child: const ContainerItemComponent(
                              fontSize: 10,
                              text: 'Calculator',
                              iconData: Icons.calculate,
                              sizeIcon: 30.0,
                              colorIcon: AppColors.colorWhite,
                              color: AppColors.colorDarkRed,
                            ),
                          );
                        }),
                    const ContainerItemComponent(
                      text: 'Chat',
                      fontSize: 10,
                      iconData: Icons.chat_rounded,
                      colorIcon: AppColors.colorWhite,
                      sizeIcon: 30.0,
                      color: AppColors.colorBlue,
                    ),
                    GetBuilder<HomePageController>(
                      id: "toRandomPage",
                      builder: (_) {
                        return GestureDetector(
                          onTap: () {
                            HomePageController().onClickedRandomPage(context);
                          },
                          child: const ContainerItemComponent(
                            text: 'Random Num',
                            iconData: Icons.pin_outlined,
                            fontSize: 10,
                            sizeIcon: 30.0,
                            colorIcon: AppColors.colorWhite,
                            color: AppColors.colorOrange,
                          ),
                        );
                      },
                    ),
                    const ContainerItemComponent(
                      fontSize: 10,
                      text: 'Date',
                      iconData: Icons.favorite,
                      colorIcon: AppColors.colorWhite,
                      sizeIcon: 30.0,
                      color: AppColors.colorPink,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 7,
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.colorWhite,
                ),
              ))
        ],
      ),
    );
  }
}
