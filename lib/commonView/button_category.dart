import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hare_hotel/utils/utils.dart';

class ButtonCategory extends StatelessWidget {
  final String svgPath;
  final String categoryName;
  final bool selected;

  const ButtonCategory(
    this.svgPath,
    this.categoryName, {
    this.selected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.06,
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.01,
        vertical: deviceHeight * 0.01,
      ),
      decoration: BoxDecoration(
        color: selected ? colorRed : colorWhite,
        border:
            selected ? null : Border.all(color: colorButtonBorder, width: 1),
        borderRadius: BorderRadius.circular(deviceWidth * 0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(svgPath, color: selected ? colorWhite : colorBlack),
          SizedBox(width: deviceWidth * 0.005),
          Text(
            categoryName,
            style: TextStyle(
              color: selected ? colorWhite : colorBlack,
              fontSize: deviceWidth * 0.014,
            ),
          ),
        ],
      ),
    );
  }
}
