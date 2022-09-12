import 'package:flutter/material.dart';
import 'package:getx_learning_app/utils/const/app_colors.dart';

class ContainerItemComponent extends StatelessWidget {
  const ContainerItemComponent(
      {Key? key, this.color, this.sizeIcon, this.iconData})
      : super(key: key);

  final Color? color;
  final IconData? iconData;
  final double? sizeIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppColors.backGourndColor),
          child: const Icon(
            Icons.games_sharp,
            size: 50,
          ),
        ),
        Text('data')
      ],
    );
  }
}
