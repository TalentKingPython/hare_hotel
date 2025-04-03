import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  OverviewState createState() => OverviewState();
}

class OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // City Name Section
              Container(
                margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Europe  /  Norway  /  Western Norway  ",
                      style: TextStyle(
                        color: Color(0xFF101010),
                        fontSize: deviceWidth * 0.015,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '/  Bergen',
                      style: TextStyle(
                        color: colorRed,
                        fontSize: deviceWidth * 0.015,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // City Image Gallery Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, deviceWidth * 0.02, 0),
                      height: deviceHeight * 0.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(deviceWidth * 0.02),
                        child: Image.asset(
                          "assets/images/bergen_city_1.png",
                          width: deviceWidth * 0.6,
                          height: deviceHeight * 0.45,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: SizedBox(
                      height: deviceHeight * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.02,
                                ),
                                child: Image.asset(
                                  "assets/images/bergen_city_2.png",
                                  width: deviceWidth * 0.165,
                                  height: deviceHeight * 0.24,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.02,
                                ),
                                child: Image.asset(
                                  "assets/images/bergen_city_2.png",
                                  width: deviceWidth * 0.165,
                                  height: deviceHeight * 0.24,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.02,
                                ),
                                child: Image.asset(
                                  "assets/images/bergen_city_2.png",
                                  width: deviceWidth * 0.165,
                                  height: deviceHeight * 0.24,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.02,
                                ),
                                child: Image.asset(
                                  "assets/images/bergen_city_2.png",
                                  width: deviceWidth * 0.165,
                                  height: deviceHeight * 0.24,
                                  fit: BoxFit.fill,
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
              SizedBox(height: deviceHeight * 0.05),
              // City description Section
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.02,
                        vertical: deviceHeight * 0.03,
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, deviceWidth * 0.02, 0),
                      height: deviceHeight * 0.5,
                      decoration: BoxDecoration(
                        color: colorWhite,
                        border: Border.all(color: colorWhite, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Bergen, Norway",
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.025,
                                  color: colorBlack,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: deviceHeight * 0.06,
                                    height: deviceHeight * 0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: colorButtonBorder,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        deviceHeight * 0.06,
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: colorRed,
                                        size: deviceHeight * 0.03,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth * 0.01),
                                  Container(
                                    width: deviceHeight * 0.06,
                                    height: deviceHeight * 0.06,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: colorButtonBorder,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        deviceHeight * 0.06,
                                      ),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/images/share-06.svg",
                                        width: deviceHeight * 0.03,
                                        height: deviceHeight * 0.03,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: deviceHeight * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: deviceHeight * 0.04,
                                color: colorHotelText,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Lorem ipsum dolor sit",
                                style: TextStyle(
                                  color: colorHotelText,
                                  fontSize: deviceWidth * 0.012,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: deviceHeight * 0.02),
                          Text(
                            "Description",
                            style: TextStyle(
                              color: colorBlack,
                              fontSize: deviceWidth * 0.018,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: deviceHeight * 0.01),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irureconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat",
                            style: TextStyle(
                              color: colorHotelText,
                              fontSize: deviceWidth * 0.012,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: deviceHeight * 0.03),
                          Container(
                            width: deviceWidth * 0.1,
                            height: deviceHeight * 0.07,
                            decoration: BoxDecoration(
                              color: colorPrimary,
                              border: Border.all(width: 1, color: colorPrimary),
                              borderRadius: BorderRadius.circular(
                                deviceHeight * 0.07,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Read More",
                                style: TextStyle(
                                  color: colorWhite,
                                  fontSize: deviceWidth * 0.014,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      height: deviceHeight * 0.5,
                      decoration: BoxDecoration(
                        color: colorWhite,
                        border: Border.all(color: colorWhite, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: deviceHeight * 0.02,
                              horizontal: deviceWidth * 0.025,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: colorButtonBorder,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/star-06.svg",
                                  width: deviceWidth * 0.015,
                                  height: deviceWidth * 0.015,
                                ),
                                SizedBox(width: deviceWidth * 0.005),
                                Text(
                                  "Ask our AI assistant",
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.014,
                                    color: colorBlack,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: deviceWidth * 0.005),
                                Container(
                                  width: deviceWidth * 0.04,
                                  height: deviceHeight * 0.03,
                                  decoration: BoxDecoration(
                                    color: colorRed,
                                    borderRadius: BorderRadius.circular(
                                      deviceWidth * 0.2,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Beta",
                                      style: TextStyle(
                                        color: colorWhite,
                                        fontSize: deviceWidth * 0.008,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: deviceWidth * 0.015,
                              vertical: deviceHeight * 0.04,
                            ),
                            height: deviceHeight * 0.28,
                            width: deviceWidth * 0.35,
                            child: Scrollbar(
                              thickness: 5.0,
                              thumbVisibility: true,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: deviceWidth * 0.1,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: deviceHeight * 0.04,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: deviceWidth * 0.01,
                                          vertical: deviceHeight * 0.01,
                                        ),
                                        decoration: BoxDecoration(
                                          color: colorRed.withAlpha(20),
                                          borderRadius: BorderRadius.circular(
                                            deviceWidth * 0.05,
                                          ),
                                        ),
                                        child: Text(
                                          "Build a trip to Bergen with AI",
                                          style: TextStyle(
                                            color: colorRed,
                                            fontSize: deviceHeight * 0.016,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: deviceHeight * 0.02),
                                      Container(
                                        height: deviceHeight * 0.04,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: deviceWidth * 0.01,
                                          vertical: deviceHeight * 0.01,
                                        ),
                                        decoration: BoxDecoration(
                                          color: colorRed.withAlpha(20),
                                          borderRadius: BorderRadius.circular(
                                            deviceWidth * 0.05,
                                          ),
                                        ),
                                        child: Text(
                                          "What are best hiking trails on Bergen?",
                                          style: TextStyle(
                                            color: colorRed,
                                            fontSize: deviceHeight * 0.016,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: deviceHeight * 0.02),
                                      Container(
                                        height: deviceHeight * 0.04,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: deviceWidth * 0.01,
                                          vertical: deviceHeight * 0.01,
                                        ),
                                        decoration: BoxDecoration(
                                          color: colorRed.withAlpha(20),
                                          borderRadius: BorderRadius.circular(
                                            deviceWidth * 0.05,
                                          ),
                                        ),
                                        child: Text(
                                          "Recommend a good hotel in Bergen",
                                          style: TextStyle(
                                            color: colorRed,
                                            fontSize: deviceHeight * 0.016,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: deviceHeight * 0.02),
                                      Container(
                                        height: deviceHeight * 0.04,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: deviceWidth * 0.01,
                                          vertical: deviceHeight * 0.01,
                                        ),
                                        decoration: BoxDecoration(
                                          color: colorRed.withAlpha(10),
                                          borderRadius: BorderRadius.circular(
                                            deviceWidth * 0.05,
                                          ),
                                        ),
                                        child: Text(
                                          "Tell me about the Bloibanen funicular",
                                          style: TextStyle(
                                            color: colorRed.withAlpha(200),
                                            fontSize: deviceHeight * 0.016,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: deviceWidth * 0.4,
                            height: deviceHeight * 0.08,
                            margin: EdgeInsets.only(
                              left: deviceWidth * 0.02,
                              right: deviceWidth * 0.02,
                              top: deviceHeight * 0.03,
                              bottom: deviceHeight * 0.02,
                            ),
                            decoration: BoxDecoration(
                              color: colorWhite,
                              border: Border.all(
                                color: colorButtonBorder,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.08,
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: colorHotelText,
                                  fontSize: deviceWidth * 0.018,
                                ),
                                hintText: "Enter your question",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: deviceWidth * 0.01,
                                  vertical: deviceHeight * 0.012,
                                ),
                                suffixIcon: Align(
                                  widthFactor: 1.0,
                                  heightFactor: 1.0,
                                  child: Container(
                                    width: deviceWidth * 0.03,
                                    height: deviceWidth * 0.03,
                                    decoration: BoxDecoration(
                                      color: colorRed,
                                      borderRadius: BorderRadius.circular(
                                        deviceWidth * 0.1,
                                      ),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.send,
                                        color: colorWhite,
                                        size: deviceWidth * 0.02,
                                      ),
                                    ),
                                  ),
                                ),
                                isDense: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Essential Sections
              Container(
                padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.1),
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
                              "Essential Bergen",
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
                            border: Border.all(
                              color: colorButtonBorder,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.1,
                            ),
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
                    SizedBox(
                      height: deviceHeight * 0.06,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: deviceHeight * 0.06,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                                vertical: deviceHeight * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: colorRed,
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    color: colorWhite,
                                    size: deviceWidth * 0.016,
                                  ),
                                  SizedBox(width: deviceWidth * 0.005),
                                  Text(
                                    "Essentials",
                                    style: TextStyle(
                                      color: colorWhite,
                                      fontSize: deviceWidth * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth * 0.006),
                            Container(
                              height: deviceHeight * 0.06,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                                vertical: deviceHeight * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(
                                  color: colorButtonBorder,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.list,
                                    color: colorBlack,
                                    size: deviceWidth * 0.016,
                                  ),
                                  SizedBox(width: deviceWidth * 0.005),
                                  Text(
                                    "Travelor's choice",
                                    style: TextStyle(
                                      color: colorBlack,
                                      fontSize: deviceWidth * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth * 0.006),
                            Container(
                              height: deviceHeight * 0.06,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                                vertical: deviceHeight * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(
                                  color: colorButtonBorder,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.list,
                                    color: colorBlack,
                                    size: deviceWidth * 0.016,
                                  ),
                                  SizedBox(width: deviceWidth * 0.005),
                                  Text(
                                    "Travelor's choice",
                                    style: TextStyle(
                                      color: colorBlack,
                                      fontSize: deviceWidth * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth * 0.006),
                            Container(
                              height: deviceHeight * 0.06,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                                vertical: deviceHeight * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(
                                  color: colorButtonBorder,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.list,
                                    color: colorBlack,
                                    size: deviceWidth * 0.016,
                                  ),
                                  SizedBox(width: deviceWidth * 0.005),
                                  Text(
                                    "Travelor's choice",
                                    style: TextStyle(
                                      color: colorBlack,
                                      fontSize: deviceWidth * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth * 0.006),
                            Container(
                              height: deviceHeight * 0.06,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                                vertical: deviceHeight * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(
                                  color: colorButtonBorder,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.list,
                                    color: colorBlack,
                                    size: deviceWidth * 0.016,
                                  ),
                                  SizedBox(width: deviceWidth * 0.005),
                                  Text(
                                    "Travelor's choice",
                                    style: TextStyle(
                                      color: colorBlack,
                                      fontSize: deviceWidth * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth * 0.006),
                            Container(
                              height: deviceHeight * 0.06,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                                vertical: deviceHeight * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(
                                  color: colorButtonBorder,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.list,
                                    color: colorBlack,
                                    size: deviceWidth * 0.016,
                                  ),
                                  SizedBox(width: deviceWidth * 0.005),
                                  Text(
                                    "Travelor's choice",
                                    style: TextStyle(
                                      color: colorBlack,
                                      fontSize: deviceWidth * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: deviceWidth * 0.006),
                            Container(
                              height: deviceHeight * 0.06,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                                vertical: deviceHeight * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: colorWhite,
                                border: Border.all(
                                  color: colorButtonBorder,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(
                                  deviceWidth * 0.1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.list,
                                    color: colorBlack,
                                    size: deviceWidth * 0.016,
                                  ),
                                  SizedBox(width: deviceWidth * 0.005),
                                  Text(
                                    "Travelor's choice",
                                    style: TextStyle(
                                      color: colorBlack,
                                      fontSize: deviceWidth * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: deviceHeight * 0.075),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _essentialCard(),
                        _essentialCard(),
                        _essentialCard(),
                      ],
                    ),
                  ],
                ),
              ),
              // Collection Sections
              Container(
                padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.1),
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
                              "Browse Collections",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.028,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: deviceHeight * 0.015),
                            Text(
                              "Get ideas on what to do, see, and eat",
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
                            border: Border.all(
                              color: colorButtonBorder,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.1,
                            ),
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
                      children: [
                        _collectionCard(),
                        _collectionCard(),
                        _collectionCard(),
                      ],
                    ),
                  ],
                ),
              ),

              //Itineraries Section
              Container(
                padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.1),
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
                              "Itineraries to help your plan",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.028,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: deviceHeight * 0.015),
                            Text(
                              "Created by AI, guided by insights from our community.",
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
                            border: Border.all(
                              color: colorButtonBorder,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.1,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Learn More",
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 8,
                          child: Container(
                            height: deviceHeight * 0.7,
                            decoration: BoxDecoration(
                              color: colorWhite,
                              border: Border.all(color: colorWhite, width: 1),
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.015,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: deviceWidth * 0.02,
                              vertical: deviceHeight * 0.02,
                            ),
                            margin: EdgeInsets.fromLTRB(
                              0,
                              0,
                              deviceWidth * 0.02,
                              0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: deviceWidth * 0.6,
                                  height: deviceHeight * 0.4,
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          deviceWidth * 0.03,
                                        ),
                                        child: Image.asset(
                                          "assets/images/bergen_essential_1.png",
                                          height: deviceHeight * 0.4,
                                          width: deviceWidth * 0.23,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(width: deviceWidth * 0.03),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          deviceWidth * 0.03,
                                        ),
                                        child: Image.asset(
                                          "assets/images/bergen_hotel_1.png",
                                          height: deviceHeight * 0.4,
                                          width: deviceWidth * 0.23,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: deviceWidth * 0.6,
                                  height: deviceHeight * 0.23,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: deviceHeight * 0.23,
                                        width: deviceWidth * 0.33,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        deviceWidth * 0.01,
                                                    vertical:
                                                        deviceHeight * 0.01,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: colorMainBackground,
                                                    border: Border.all(
                                                      color: colorButtonBorder,
                                                      width: 0.3,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          deviceWidth * 0.1,
                                                        ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Mountain",
                                                      style: TextStyle(
                                                        color: colorHotelText,
                                                        fontSize:
                                                            deviceWidth * 0.012,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: deviceWidth * 0.01,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        deviceWidth * 0.01,
                                                    vertical:
                                                        deviceHeight * 0.01,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: colorMainBackground,
                                                    border: Border.all(
                                                      color: colorButtonBorder,
                                                      width: 0.3,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          deviceWidth * 0.1,
                                                        ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "Walking Areas",
                                                      style: TextStyle(
                                                        color: colorHotelText,
                                                        fontSize:
                                                            deviceWidth * 0.012,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur ipsum",
                                              style: TextStyle(
                                                color: colorBlack,
                                                fontWeight: FontWeight.bold,
                                                fontSize: deviceWidth * 0.022,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  "assets/images/small-hare.png",
                                                  width: deviceWidth * 0.015,
                                                  height: deviceWidth * 0.015,
                                                ),
                                                SizedBox(
                                                  width: deviceWidth * 0.01,
                                                ),
                                                Text(
                                                  "Powered by Hare AI",
                                                  style: TextStyle(
                                                    color: colorHotelText,
                                                    fontSize:
                                                        deviceWidth * 0.014,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: deviceWidth * 0.15,
                                        height: deviceHeight * 0.23,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "From",
                                              style: TextStyle(
                                                color: colorBlack,
                                                fontSize: deviceWidth * 0.016,
                                              ),
                                            ),
                                            SizedBox(
                                              height: deviceHeight * 0.01,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "\$94USD ",
                                                  style: TextStyle(
                                                    color: colorRed,
                                                    fontSize:
                                                        deviceWidth * 0.018,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "/adult",
                                                  style: TextStyle(
                                                    color: colorHotelText,
                                                    fontSize:
                                                        deviceWidth * 0.018,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: deviceHeight * 0.04,
                                            ),
                                            Container(
                                              width: deviceWidth * 0.1,
                                              height: deviceHeight * 0.05,
                                              decoration: BoxDecoration(
                                                color: colorWhite,
                                                border: Border.all(
                                                  color: colorButtonBorder,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                      deviceWidth * 0.1,
                                                    ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "View More",
                                                  style: TextStyle(
                                                    color: colorBlack,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        deviceWidth * 0.011,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
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
                          flex: 5,
                          child: SizedBox(
                            height: deviceHeight * 0.7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: deviceWidth * 0.4,
                                  height: deviceHeight * 0.34,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: deviceWidth * 0.02,
                                    vertical: deviceHeight * 0.02,
                                  ),
                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    border: Border.all(
                                      color: colorButtonBorder,
                                      width: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      deviceWidth * 0.02,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      deviceWidth * 0.01,
                                                  vertical: deviceHeight * 0.01,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: colorMainBackground,
                                                  border: Border.all(
                                                    color: colorButtonBorder,
                                                    width: 0.3,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        deviceWidth * 0.1,
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Mountain",
                                                    style: TextStyle(
                                                      color: colorHotelText,
                                                      fontSize:
                                                          deviceWidth * 0.012,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceWidth * 0.01,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      deviceWidth * 0.01,
                                                  vertical: deviceHeight * 0.01,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: colorMainBackground,
                                                  border: Border.all(
                                                    color: colorButtonBorder,
                                                    width: 0.3,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        deviceWidth * 0.1,
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Walking Areas",
                                                    style: TextStyle(
                                                      color: colorHotelText,
                                                      fontSize:
                                                          deviceWidth * 0.012,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: deviceHeight * 0.02),
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectetur ipsum",
                                            style: TextStyle(
                                              color: colorBlack,
                                              fontWeight: FontWeight.bold,
                                              fontSize: deviceWidth * 0.022,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/small-hare.png",
                                            width: deviceWidth * 0.015,
                                            height: deviceWidth * 0.015,
                                          ),
                                          SizedBox(width: deviceWidth * 0.01),
                                          Text(
                                            "Powered by Hare AI",
                                            style: TextStyle(
                                              color: colorHotelText,
                                              fontSize: deviceWidth * 0.014,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: deviceWidth * 0.4,
                                  height: deviceHeight * 0.34,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: deviceWidth * 0.02,
                                    vertical: deviceHeight * 0.02,
                                  ),
                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    border: Border.all(
                                      color: colorButtonBorder,
                                      width: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      deviceWidth * 0.02,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      deviceWidth * 0.01,
                                                  vertical: deviceHeight * 0.01,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: colorMainBackground,
                                                  border: Border.all(
                                                    color: colorButtonBorder,
                                                    width: 0.3,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        deviceWidth * 0.1,
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Mountain",
                                                    style: TextStyle(
                                                      color: colorHotelText,
                                                      fontSize:
                                                          deviceWidth * 0.012,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceWidth * 0.01,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      deviceWidth * 0.01,
                                                  vertical: deviceHeight * 0.01,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: colorMainBackground,
                                                  border: Border.all(
                                                    color: colorButtonBorder,
                                                    width: 0.3,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        deviceWidth * 0.1,
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Walking Areas",
                                                    style: TextStyle(
                                                      color: colorHotelText,
                                                      fontSize:
                                                          deviceWidth * 0.012,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: deviceHeight * 0.02),
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectetur ipsum",
                                            style: TextStyle(
                                              color: colorBlack,
                                              fontWeight: FontWeight.bold,
                                              fontSize: deviceWidth * 0.022,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/small-hare.png",
                                            width: deviceWidth * 0.015,
                                            height: deviceWidth * 0.015,
                                          ),
                                          SizedBox(width: deviceWidth * 0.01),
                                          Text(
                                            "Powered by Hare AI",
                                            style: TextStyle(
                                              color: colorHotelText,
                                              fontSize: deviceWidth * 0.014,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //Great Sections
              Container(
                padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.1),
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
                              "Bergen Is Great For",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.028,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: deviceHeight * 0.015),
                            Text(
                              "Get ideas on what to do, see, and eat",
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
                            border: Border.all(
                              color: colorButtonBorder,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.1,
                            ),
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
                      children: [
                        _greatSectionCard("assets/images/bergen_hotel_1.png"),
                        _greatSectionCard("assets/images/bergen_hotel_1.png"),
                        _greatSectionCard("assets/images/bergen_hotel_1.png"),
                      ],
                    ),
                    SizedBox(height: deviceHeight * 0.05),
                    Text(
                      "Ports of Call Tours",
                      style: TextStyle(
                        color: colorBlack,
                        fontSize: deviceWidth * 0.018,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: deviceHeight * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _greatSectionCard(
                          "assets/images/bergen_essential_1.png",
                        ),
                        _greatSectionCard(
                          "assets/images/bergen_essential_1.png",
                        ),
                        _greatSectionCard(
                          "assets/images/bergen_essential_1.png",
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight * 0.05),
                    Text(
                      "Bars",
                      style: TextStyle(
                        color: colorBlack,
                        fontSize: deviceWidth * 0.018,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: deviceHeight * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _greatSectionCard("assets/images/bergen_bar_1.png"),
                        _greatSectionCard("assets/images/bergen_bar_1.png"),
                        _greatSectionCard("assets/images/bergen_bar_1.png"),
                      ],
                    ),
                  ],
                ),
              ),
              //Experiences Section
              Container(
                padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.1),
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
                              "Must-do experiences in Bergen",
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
                            border: Border.all(
                              color: colorButtonBorder,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.1,
                            ),
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
                      children: [
                        _experienceCard(),
                        _experienceCard(),
                        _experienceCard(),
                      ],
                    ),
                  ],
                ),
              ),

              //Day Cruises Section
              Container(
                padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.1),
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
                              "Day Cruises",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.028,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: deviceHeight * 0.015),
                            Text(
                              "Get ideas on what to do, see, and eat",
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
                            border: Border.all(
                              color: colorButtonBorder,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.1,
                            ),
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
                      children: [
                        _greatSectionCard("assets/images/bergen_hotel_1.png"),
                        _greatSectionCard("assets/images/bergen_hotel_1.png"),
                        _greatSectionCard("assets/images/bergen_hotel_1.png"),
                      ],
                    ),
                  ],
                ),
              ),

              //Attraction Section
              Container(
                padding: EdgeInsets.symmetric(vertical: deviceHeight * 0.1),
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
                              "Top Attractions in Bergen",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.028,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: deviceHeight * 0.015),
                            Text(
                              "These Rankings are informed by Hare data - we consider traveler reviews & ratings",
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
                            border: Border.all(
                              color: colorButtonBorder,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.1,
                            ),
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
                      children: [
                        _attractionCard(),
                        _attractionCard(),
                        _attractionCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _essentialCard() {
    return Container(
      width: deviceWidth * 0.28,
      height: deviceHeight * 0.7,
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
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.01),
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
                padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.01),
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
    );
  }

  Widget _collectionCard() {
    return Container(
      width: deviceWidth * 0.28,
      height: deviceHeight * 0.7,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: deviceHeight * 0.5,
            width: deviceWidth * 0.26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(deviceWidth * 0.02),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(deviceWidth * 0.02),
              child: Image.asset(
                "assets/images/bergen_collection_1.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: deviceHeight * 0.02),
          Text(
            "Lorem ipsum dolor sit",
            style: TextStyle(
              color: colorBlack,
              fontSize: deviceWidth * 0.018,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: deviceHeight * 0.01),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
            style: TextStyle(
              color: colorHotelText,
              fontSize: deviceWidth * 0.012,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _greatSectionCard(String imagepath) {
    return Container(
      width: deviceWidth * 0.28,
      height: deviceHeight * 0.7,
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
              child: Image.asset(imagepath, fit: BoxFit.fill),
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
              Text(
                "From",
                style: TextStyle(
                  color: colorBlack,
                  fontSize: deviceWidth * 0.018,
                ),
              ),
              SizedBox(width: deviceWidth * 0.01),
              Text(
                "\$94USD ",
                style: TextStyle(
                  color: colorRed,
                  fontSize: deviceWidth * 0.018,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "/adult",
                style: TextStyle(
                  color: colorHotelText,
                  fontSize: deviceWidth * 0.018,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _experienceCard() {
    return Container(
      width: deviceWidth * 0.28,
      height: deviceHeight * 0.8,
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
              Text(
                "From",
                style: TextStyle(
                  color: colorBlack,
                  fontSize: deviceWidth * 0.018,
                ),
              ),
              SizedBox(width: deviceWidth * 0.01),
              Text(
                "\$94USD ",
                style: TextStyle(
                  color: colorRed,
                  fontSize: deviceWidth * 0.018,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "/adult",
                style: TextStyle(
                  color: colorHotelText,
                  fontSize: deviceWidth * 0.018,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: deviceHeight * 0.02),
          Container(
            width: deviceWidth * 0.25,
            height: deviceHeight * 0.06,
            decoration: BoxDecoration(
              color: colorRed,
              borderRadius: BorderRadius.circular(deviceWidth * 0.1),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/experience-reserve.svg",
                    width: deviceWidth * 0.016,
                    height: deviceWidth * 0.016,
                  ),
                  SizedBox(width: deviceWidth * 0.01),
                  Text(
                    "Reserve",
                    style: TextStyle(
                      color: colorWhite,
                      fontSize: deviceWidth * 0.014,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _attractionCard() {
    return Container(
      width: deviceWidth * 0.28,
      height: deviceHeight * 0.8,
      decoration: BoxDecoration(
        color: colorRed.withAlpha(10),
        borderRadius: BorderRadius.circular(deviceWidth * 0.02),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: deviceWidth * 0.28,
            height: deviceHeight * 0.06,
            child: Center(
              child: Text(
                "See ways to experience (29)",
                style: TextStyle(
                  color: colorRed,
                  fontSize: deviceWidth * 0.014,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: deviceWidth * 0.28,
            height: deviceHeight * 0.74,
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
}
