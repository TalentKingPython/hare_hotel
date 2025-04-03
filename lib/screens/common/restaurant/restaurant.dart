import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  RestaurantState createState() => RestaurantState();
}

class RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.05,
        vertical: deviceHeight * 0.1,
      ),
      width: deviceWidth,
      height: deviceHeight,
      child: ListView(
        children: [
          Row(
            children: [
              Text(
                'Top Restaurant in Bergen',
                style: TextStyle(
                  color: colorBlack,
                  fontSize: deviceWidth * 0.028,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                'Sort by:  ',
                style: TextStyle(
                  color: colorBlack,
                  fontSize: deviceWidth * 0.012,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Features',
                  prefix: SvgPicture.asset('assets/svgs/search.svg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
