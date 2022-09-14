import 'package:flutter/material.dart';
import 'package:getx_learning_app/pages/date_page/date_page_controller.dart';
import 'package:getx_learning_app/utils/const/app_colors.dart';

import '../../utils/const/app_dimens.dart';

class DatePage extends StatelessWidget {
  const DatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.colorDarkPink,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              DatePageController().onClickIconReturn(context);
            },
            child: const Icon(
              Icons.chevron_left_rounded,
              size: AppDimens.icon_size_30,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: AppColors.colorPink,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.colorWhite,
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        backgroundColor: AppColors.colorPink,
                        radius: 50,
                      ),
                      Icon(
                        Icons.favorite,
                        size: 50,
                        color: AppColors.colorDarkRed,
                      ),
                      CircleAvatar(
                        backgroundColor: AppColors.colorPink,
                        radius: 50,
                        child: Icon(Icons.girl),
                      )
                    ],
                  )
                ]),
              ),
            ),
          ],
        ));
  }
}
