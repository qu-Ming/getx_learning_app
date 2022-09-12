import 'package:flutter/material.dart';
import 'package:getx_learning_app/components/container_item_component.dart';
import 'package:getx_learning_app/utils/const/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        leading: Container(
            margin: const EdgeInsets.fromLTRB(10, 12, 0, 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.backGourndColor,
            ),
            child: const Icon(
              Icons.sort,
              size: 30,
            )),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(50),
            decoration: const BoxDecoration(
              color: AppColors.appBarColor,
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
                color: AppColors.colorWhite,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  children: const [
                    ContainerItemComponent(),
                    ContainerItemComponent(),
                    ContainerItemComponent(),
                    ContainerItemComponent(),
                    ContainerItemComponent(),
                    ContainerItemComponent(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
