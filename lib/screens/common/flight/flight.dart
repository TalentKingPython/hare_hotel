import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({super.key});

  @override
  FlightScreenState createState() => FlightScreenState();
}

class FlightScreenState extends State<FlightScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/flight.png'),
                  SizedBox(height: deviceHeight * 0.08),
                ],
              ),
              Positioned(
                top: deviceHeight * 0.15,
                left: 0,
                right: 0,
                child: Column(
                  spacing: 12,
                  children: [
                    Text(
                      'Find The Best Flight',
                      style: TextStyle(
                        color: colorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.05,
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.45,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorWhite,
                          fontSize: deviceWidth * 0.014,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: colorPrimary,
                            backgroundColor: colorWhite,
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
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
                              SvgPicture.asset('assets/svgs/plane.svg'),
                              SizedBox(width: 10),
                              Text(
                                'Round Trip',
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.012,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: colorWhite,
                            backgroundColor: colorWhite.withAlpha(50),
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: colorWhite.withAlpha(80)),
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(100),
                                right: Radius.circular(100),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svgs/location-marker.svg',
                                color: colorWhite,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'One-Way',
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.012,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: colorWhite,
                            backgroundColor: colorWhite.withAlpha(50),
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: colorWhite.withAlpha(80)),
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(100),
                                right: Radius.circular(100),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svgs/location-marker.svg',
                                color: colorWhite,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Multi-city',
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.012,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                          Expanded(
                            child: Text(
                              'Round Trip',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: deviceWidth * 0.015,
                              ),
                            ),
                          ),
                          SvgPicture.asset('assets/svgs/checked.svg'),
                          SizedBox(width: 10),
                          Text(
                            'Prefer nonstop',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          SvgPicture.asset('assets/svgs/unchecked.svg'),
                          SizedBox(width: 10),
                          Text(
                            'Include nearby airports',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Flexible(
                            flex: 60,
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
                                  Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svgs/calendar.svg',
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Date Pickup',
                                          style: TextStyle(
                                            fontSize: deviceWidth * 0.011,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 1,
                                    color: Colors.grey,
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svgs/calendar.svg',
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Date Dropoff',
                                          style: TextStyle(
                                            fontSize: deviceWidth * 0.011,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 20,
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
                                  SvgPicture.asset(
                                    'assets/svgs/location-marker.svg',
                                    color: colorHotelText,
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
                            flex: 20,
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
                                  SvgPicture.asset(
                                    'assets/svgs/multi-user.svg',
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Passenger',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.011,
                                    ),
                                  ),
                                  SizedBox(width: 25),
                                  Icon(Icons.expand_more),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 13,
                            child: ElevatedButton(
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
                                'Find Flight',
                                style: TextStyle(fontSize: deviceWidth * 0.011),
                              ),
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
                        SvgPicture.asset('assets/svgs/global.svg'),
                        'Worldwide Coverage',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
                      ),
                    ),
                    Expanded(
                      child: serviceCard(
                        SvgPicture.asset('assets/svgs/wallet.svg'),
                        'Book With Confidence',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
                      ),
                    ),
                    Expanded(
                      child: serviceCard(
                        SvgPicture.asset('assets/svgs/star.svg'),
                        'Review a Rental Car Location',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Popular Destinations",
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: deviceWidth * 0.028,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: deviceHeight * 0.015),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing eli",
                          style: TextStyle(
                            color: colorHotelText,
                            fontSize: deviceWidth * 0.014,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: deviceWidth * 0.013,
                      children: [
                        destinationCard(),
                        destinationCard(),
                        destinationCard(),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: deviceHeight * 0.03,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(25),
                            blurRadius: 10,
                            offset: Offset(3, 5),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(deviceWidth * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: deviceHeight * 0.025,
                        children: [
                          Text(
                            'Why did you choose us?',
                            style: TextStyle(
                              fontSize: deviceWidth * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: colorPrimary,
                                foregroundColor: colorWhite,
                                child: Text(
                                  '01',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Best Flight Deals',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.015,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0125,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: colorPrimary,
                                foregroundColor: colorWhite,
                                child: Text(
                                  '02',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Best Flight Deals',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.015,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0125,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: colorPrimary,
                                foregroundColor: colorWhite,
                                child: Text(
                                  '03',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Best Flight Deals',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.015,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0125,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: colorPrimary,
                                foregroundColor: colorWhite,
                                child: Text(
                                  '04',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Best Flight Deals',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.015,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0125,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget destinationCard() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: deviceHeight * 0.025,
          vertical: deviceHeight * 0.025,
        ),
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(deviceWidth * 0.02),
        ),
        child: Column(
          spacing: deviceHeight * 0.015,
          children: [
            SizedBox(
              height: deviceHeight * 0.4,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(deviceWidth * 0.02),
                child: Image.asset(
                  "assets/images/bergen_essential_1.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Lorem ipsum dolor sit",
              style: TextStyle(
                color: colorBlack,
                fontSize: deviceWidth * 0.018,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colorHotelText,
                fontSize: deviceWidth * 0.014,
              ),
            ),
          ],
        ),
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
}
