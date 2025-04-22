import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils.dart';

class Cruise extends StatefulWidget {
  const Cruise({super.key});

  @override
  CruiseState createState() => CruiseState();
}

class CruiseState extends State<Cruise> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/cruise.png'),
                  SizedBox(height: deviceHeight * 0.08),
                ],
              ),
              Positioned(
                top: deviceHeight * 0.12,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(
                      'Europe Cruise',
                      style: TextStyle(
                        color: colorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.050,
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.3,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorWhite,
                          fontSize: deviceWidth * 0.013,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: deviceWidth * 0.085,
                right: deviceWidth * 0.085,
                child: Container(
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(deviceWidth * 0.014),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(25),
                        offset: Offset(3, 5),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(deviceWidth * 0.015),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Same Drop Off',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * 0.015,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.expand_more),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 10,
                        children: [
                          Flexible(
                            flex: 8,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0.5,
                                foregroundColor: colorHotelText,
                                backgroundColor: colorWhite,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(100),
                                    right: Radius.circular(100),
                                  ),
                                ),
                                padding: EdgeInsets.only(left: 15, right: 40),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: deviceWidth * 0.015,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Pick up location',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.011,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0.5,
                                foregroundColor: colorHotelText,
                                backgroundColor: colorWhite,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(100),
                                    right: Radius.circular(100),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.people_outline,
                                    size: deviceWidth * 0.015,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Passenger',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.011,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.expand_more),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0.5,
                              foregroundColor: colorWhite,
                              backgroundColor: colorPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(100),
                                  right: Radius.circular(100),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Search',
                              style: TextStyle(fontSize: deviceWidth * 0.011),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: deviceHeight * .05,
              children: [
                SizedBox(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: deviceWidth * 0.02,
                  children: [
                    Expanded(
                      child: serviceCard(
                        SvgPicture.asset('assets/svgs/cruise-award.svg'),
                        'Best in Cruise Awards',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
                      ),
                    ),
                    Expanded(
                      child: serviceCard(
                        SvgPicture.asset('assets/svgs/star.svg'),
                        'Write Cruise Reviews',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
                      ),
                    ),
                    Expanded(
                      child: serviceCard(
                        SvgPicture.asset('assets/svgs/wallet-red.svg'),
                        'The Lowest Cruise Price',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: deviceHeight * 0.08,
              vertical: deviceHeight * 0.07,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Featured Europe Cruise Deals",
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: deviceWidth * 0.028,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: deviceHeight * 0.015),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                          style: TextStyle(
                            color: colorHotelText,
                            fontSize: deviceWidth * 0.014,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: deviceWidth * 0.1,
                      height: deviceHeight * 0.05,
                      decoration: BoxDecoration(
                        color: colorWhite,
                        border: Border.all(color: colorButtonBorder, width: 1),
                        borderRadius: BorderRadius.circular(deviceWidth * 0.1),
                      ),
                      child: Center(
                        child: Text(
                          "View More",
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: deviceWidth * 0.011,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.05),
                Row(
                  spacing: deviceWidth * 0.015,
                  children: [
                    Expanded(child: cruiseCard()),
                    Expanded(child: cruiseCard()),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.03),
                Row(
                  spacing: deviceWidth * 0.015,
                  children: [
                    Expanded(child: cruiseCard()),
                    Expanded(child: cruiseCard()),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: deviceHeight * 0.08,
              vertical: deviceHeight * 0.07,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cruise to Popular Island Destination",
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: deviceWidth * 0.028,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: deviceHeight * 0.015),
                        Text(
                          "Pick a category to filter your necs",
                          style: TextStyle(
                            color: colorHotelText,
                            fontSize: deviceWidth * 0.014,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: deviceWidth * 0.1,
                      height: deviceHeight * 0.05,
                      decoration: BoxDecoration(
                        color: colorWhite,
                        border: Border.all(color: colorButtonBorder, width: 1),
                        borderRadius: BorderRadius.circular(deviceWidth * 0.1),
                      ),
                      child: Center(
                        child: Text(
                          "View More",
                          style: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: deviceWidth * 0.011,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: deviceWidth * 0.013,
                  children: [
                    attractionCard(),
                    attractionCard(),
                    attractionCard(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget attractionCard() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.01,
              vertical: deviceHeight * 0.02,
            ),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(deviceWidth * 0.02),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: deviceHeight * 0.4,
                  width: deviceWidth * 0.26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(deviceWidth * 0.02),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(deviceWidth * 0.02),
                    child: Image.asset(
                      "assets/images/bergen_essential_1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: deviceHeight * 0.02),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur ipsum",
                  style: TextStyle(
                    color: colorBlack,
                    fontSize: deviceWidth * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: deviceHeight * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFFF2B022),
                      size: deviceWidth * 0.02,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFF2B022),
                      size: deviceWidth * 0.02,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFF2B022),
                      size: deviceWidth * 0.02,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFF2B022),
                      size: deviceWidth * 0.02,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFF2B022),
                      size: deviceWidth * 0.02,
                      fill: 0.1,
                    ),
                    SizedBox(width: deviceWidth * 0.015),
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: colorBlack,
                        fontSize: deviceWidth * 0.016,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: deviceWidth * 0.01),
                    Text(
                      "(278 Reviews)",
                      style: TextStyle(
                        color: colorHotelText,
                        fontSize: deviceWidth * 0.016,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: deviceHeight * 0.05,
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.01,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: colorButtonBorder, width: 1),
                        borderRadius: BorderRadius.circular(deviceWidth * 0.1),
                      ),
                      child: Center(
                        child: Text(
                          "Mountain",
                          style: TextStyle(
                            color: colorHotelText,
                            fontSize: deviceWidth * 0.012,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: deviceWidth * 0.01),
                    Container(
                      height: deviceHeight * 0.05,
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.01,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: colorButtonBorder, width: 1),
                        borderRadius: BorderRadius.circular(deviceWidth * 0.1),
                      ),
                      child: Center(
                        child: Text(
                          "Walking Areas",
                          style: TextStyle(
                            color: colorHotelText,
                            fontSize: deviceWidth * 0.012,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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

  Widget serviceCard(Widget icon, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.withAlpha(25), offset: Offset(3, 5)),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        spacing: deviceWidth * 0.01,
        children: [
          icon,
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: deviceWidth * 0.018,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colorTextLight,
              fontSize: deviceWidth * 0.012,
            ),
          ),
        ],
      ),
    );
  }

  Widget cruiseCard() {
    return Container(
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(deviceWidth * 0.01),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.025,
        vertical: deviceWidth * 0.02,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Column(
              spacing: deviceHeight * 0.03,
              children: [
                Text(
                  '2 Night Cruise to Europe - Western Mediternaoean',
                  softWrap: true,
                  style: TextStyle(
                    fontSize: deviceWidth * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  spacing: deviceHeight * 0.02,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/ship-cruise.svg'),
                        SizedBox(width: 5),
                        Text(
                          'Ship : ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('MSC Fantasia | Inside Cabin'),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/calendar-check.svg'),
                        SizedBox(width: 5),
                        Text(
                          'Sailing Date : ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('4/19/2025'),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svgs/location-marker.svg'),
                        SizedBox(width: 5),
                        Text(
                          'Departs : ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Barcelona'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Total', style: TextStyle(fontSize: deviceWidth * 0.014)),
                Text(
                  '\$61 USD',
                  style: TextStyle(
                    fontSize: deviceWidth * 0.02,
                    fontWeight: FontWeight.bold,
                    color: colorPrimary,
                  ),
                ),
                SizedBox(height: deviceHeight * 0.08),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: colorWhite,
                    backgroundColor: colorPrimary,
                    padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(deviceWidth),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'View Cruise',
                    style: TextStyle(fontSize: deviceWidth * 0.013),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
