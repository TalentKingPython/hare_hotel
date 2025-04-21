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
      padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
      width: deviceWidth,
      height: deviceHeight,
      child: ListView(
        children: [
          SizedBox(height: deviceHeight * 0.1),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Restaurant in Bergen',
                    style: TextStyle(
                      color: colorBlack,
                      fontSize: deviceWidth * 0.028,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '403 results ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'match your filters. ',
                        style: TextStyle(color: colorTextLight),
                      ),
                      Text(
                        'Clear all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
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
              SizedBox(
                width: deviceWidth * 0.18,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: colorWhite,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(deviceWidth * .1),
                    ),
                    hintStyle: TextStyle(
                      color: colorBlack,
                      fontSize: deviceWidth * 0.012,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'Features',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    isDense: true,
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: SvgPicture.asset(
                        'assets/svgs/search.svg',
                        width: deviceWidth * .012,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: deviceHeight * .05),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(25),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: deviceHeight * 0.02,
                    horizontal: deviceWidth * .02,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: deviceWidth * .001),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Establishment Type',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .015,
                            ),
                          ),
                          Container(
                            width: deviceWidth * .023,
                            height: deviceWidth * .023,
                            decoration: BoxDecoration(
                              color: colorMainBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.expand_less),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return checkBoxText('Restaurant', index == 0);
                        },
                      ),
                      Divider(height: deviceWidth * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name Category',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .015,
                            ),
                          ),
                          Container(
                            width: deviceWidth * .023,
                            height: deviceWidth * .023,
                            decoration: BoxDecoration(
                              color: colorMainBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.expand_less),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return checkBoxText(
                            'Lorem ipsum sit amer',
                            index == 0,
                          );
                        },
                      ),
                      Divider(height: deviceWidth * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Awards',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .015,
                            ),
                          ),
                          Container(
                            width: deviceWidth * .023,
                            height: deviceWidth * .023,
                            decoration: BoxDecoration(
                              color: colorMainBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.expand_less),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      checkBoxText('Lorem ipsum sit amer', false),
                      Divider(height: deviceHeight * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Traveler Rating',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .015,
                            ),
                          ),
                          Container(
                            width: deviceWidth * .023,
                            height: deviceWidth * .023,
                            decoration: BoxDecoration(
                              color: colorMainBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.expand_less),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return checkBoxText('And Up', index == 0);
                        },
                      ),
                      Divider(height: deviceWidth * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name Category',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .015,
                            ),
                          ),
                          Container(
                            width: deviceWidth * .023,
                            height: deviceWidth * .023,
                            decoration: BoxDecoration(
                              color: colorMainBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.expand_less),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return checkBoxText(
                            'Lorem ipsum sit amer',
                            index == 0,
                          );
                        },
                      ),
                      Divider(height: deviceWidth * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name Category',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .015,
                            ),
                          ),
                          Container(
                            width: deviceWidth * .023,
                            height: deviceWidth * .023,
                            decoration: BoxDecoration(
                              color: colorMainBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.expand_less),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return checkBoxText(
                            'Lorem ipsum sit amer',
                            index == 0,
                          );
                        },
                      ),
                      Divider(height: deviceWidth * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name Category',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .015,
                            ),
                          ),
                          Container(
                            width: deviceWidth * .023,
                            height: deviceWidth * .023,
                            decoration: BoxDecoration(
                              color: colorMainBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.expand_less),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return checkBoxText(
                            'Lorem ipsum sit amer',
                            index == 0,
                          );
                        },
                      ),
                      Divider(height: deviceWidth * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name Category',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .015,
                            ),
                          ),
                          Container(
                            width: deviceWidth * .023,
                            height: deviceWidth * .023,
                            decoration: BoxDecoration(
                              color: colorMainBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.expand_less),
                          ),
                        ],
                      ),
                      SizedBox(height: deviceHeight * 0.02),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return checkBoxText(
                            'Lorem ipsum sit amer',
                            index == 0,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: deviceWidth * 0.02),
              Expanded(
                flex: 13,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.01,
                        vertical: deviceWidth * 0.005,
                      ),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: colorBlack.withAlpha(25),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/question-mark.svg'),
                          SizedBox(width: deviceWidth * 0.01),
                          Text(
                            'Looking to expand your search outside of Bergen? We have suggestions.',
                            style: TextStyle(
                              fontSize: deviceWidth * 0.012,
                              color: colorBlack,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Expand your search',
                              style: TextStyle(
                                fontSize: deviceWidth * 0.012,
                                color: colorPrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: deviceHeight * 0.02),
                    restaurantCard(),
                    restaurantCard(),
                    restaurantCard(),
                    SizedBox(height: deviceHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fine Dining',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: deviceWidth * .018,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: colorMainBackground,
                            foregroundColor: colorBlack,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              side: BorderSide(
                                color: colorButtonBorder,
                                width: 1,
                              ), // Added border color
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'View More',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * .010,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight * 0.01),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      child: Row(
                        spacing: deviceWidth * 0.012,
                        children: [
                          diningCard(),
                          diningCard(),
                          diningCard(),
                          diningCard(),
                        ],
                      ),
                    ),
                    SizedBox(height: deviceHeight * 0.01),
                    restaurantCard(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget checkBoxText(String text, bool checked) {
    return Padding(
      padding: EdgeInsets.only(bottom: deviceHeight * 0.01),
      child: Row(
        children: [
          SvgPicture.asset(
            checked ? 'assets/svgs/checked.svg' : 'assets/svgs/unchecked.svg',
          ),
          SizedBox(width: 10),
          Text(text, style: TextStyle(fontSize: deviceWidth * 0.012)),
        ],
      ),
    );
  }

  Widget restaurantCard() {
    return Container(
      margin: EdgeInsets.only(top: deviceHeight * 0.02),
      padding: EdgeInsets.all(deviceWidth * 0.02),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/restaurant_image.png', // Replace with actual image path
              width: deviceHeight * 0.25,
              height: deviceHeight * 0.22,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: deviceWidth * 0.02),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: colorYellow,
                      size: deviceWidth * 0.016,
                    ),
                    Icon(
                      Icons.star,
                      color: colorYellow,
                      size: deviceWidth * 0.016,
                    ),
                    Icon(
                      Icons.star,
                      color: colorYellow,
                      size: deviceWidth * 0.016,
                    ),
                    Icon(
                      Icons.star,
                      color: colorYellow,
                      size: deviceWidth * 0.016,
                    ),
                    Icon(
                      Icons.star,
                      color: colorYellow,
                      size: deviceWidth * 0.016,
                    ),
                    Text(
                      ' 4.8 ',
                      style: TextStyle(
                        fontSize: deviceWidth * 0.012,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '(278 Reviews)',
                      style: TextStyle(
                        color: colorTextLight,
                        fontSize: deviceWidth * 0.012,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.01),
                Row(
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.015,
                      ),
                    ),
                    SizedBox(width: deviceWidth * 0.02),
                    Container(
                      decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      child: Text(
                        'Sponsored',
                        style: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: deviceWidth * 0.008,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.01),
                Row(
                  children: [
                    Text(
                      'Open Now',
                      style: TextStyle(
                        color: colorPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' (7:30 AM - 11:00 PM) ',
                      style: TextStyle(
                        color: colorTextLight,
                        fontSize: deviceWidth * 0.012,
                      ),
                    ),
                    Icon(Icons.circle, size: 5, color: colorTextLight),
                    Text(
                      ' \$\$ ',
                      style: TextStyle(
                        color: colorTextLight,
                        fontSize: deviceWidth * 0.012,
                      ),
                    ),
                    Icon(Icons.circle, size: 5, color: colorTextLight),
                    Text(
                      ' \$\$\$',
                      style: TextStyle(
                        color: colorTextLight,
                        fontSize: deviceWidth * 0.012,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.05),
                Row(
                  children: [
                    Chip(
                      label: Text('American'),
                      backgroundColor: colorWhite,
                      elevation: 1,
                    ),
                    SizedBox(width: deviceWidth * 0.01),
                    Chip(
                      label: Text('Steakhouse'),
                      backgroundColor: colorWhite,
                      elevation: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget diningCard() {
    return Container(
      width: deviceHeight * 0.24,
      padding: EdgeInsets.all(deviceWidth * 0.01),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        spacing: deviceHeight * 0.015,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/restaurant_image.png', // Replace with actual image path
              width: deviceHeight * 0.2,
              height: deviceHeight * 0.2,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: deviceWidth * 0.014,
            ),
          ),
          Row(
            children: [
              Icon(Icons.star, color: colorYellow, size: deviceWidth * 0.012),
              Text(
                ' 4.8 ',
                style: TextStyle(
                  fontSize: deviceWidth * 0.009,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '(278 Reviews)',
                style: TextStyle(
                  color: colorTextLight,
                  fontSize: deviceWidth * 0.009,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text('From', style: TextStyle(fontSize: deviceWidth * 0.012)),
              Text(
                ' \$94 USD ',
                style: TextStyle(
                  color: colorPrimary,
                  fontSize: deviceWidth * 0.012,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '/adult',
                style: TextStyle(
                  color: colorTextLight,
                  fontSize: deviceWidth * 0.012,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
