import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils.dart';
import '../desktop/thingstodo/date.dart';

class Thingstodo extends StatelessWidget {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * 0.02,
                        vertical: deviceHeight * 0.03,
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, deviceWidth * 0.02, 0),
                      height: deviceHeight * 1,
                      decoration: BoxDecoration(
                        color: colorWhite,
                        border: Border.all(color: colorWhite, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Mostraumen Fjord Cruise",
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
                                    width: deviceHeight * 0.2,
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
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/write-pen.svg",
                                          width: deviceHeight * 0.025,
                                          height: deviceHeight * 0.025,
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          "Write a Review",
                                          style: TextStyle(
                                            fontSize: deviceWidth * 0.011,
                                            color: colorBlack,
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
                          SizedBox(height: deviceHeight * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "By ",
                                style: TextStyle(
                                  color: colorHotelText,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Guided Fjord Tours",
                                style: TextStyle(
                                  color: colorPrimary,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(width: deviceWidth * 0.01),
                              Icon(
                                Icons.circle,
                                color: Color(0xFF9C9C9C),
                                size: deviceWidth * 0.005,
                                // fill: 0.1,
                              ),
                              SizedBox(width: deviceWidth * 0.008),
                              Icon(
                                Icons.star,
                                color: Color(0xFFF2B022),
                                size: deviceWidth * 0.018,
                                fill: 0.1,
                              ),
                              SizedBox(width: deviceWidth * 0.006),
                              Text(
                                "4.8",
                                style: TextStyle(
                                  color: colorBlack,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: deviceWidth * 0.008),
                              Text(
                                "(278 Reviews)",
                                style: TextStyle(
                                  color: colorHotelText,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.bold,
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
                          Text(
                            "Read more...",
                            style: TextStyle(
                              color: colorPrimary,
                              fontSize: deviceWidth * 0.012,
                              fontWeight: FontWeight.bold,
                            )
                          ),

                          //facilities
                          SizedBox(height: deviceHeight * 0.03),
                          Text(
                            "Facilities",
                            style: TextStyle(
                              color: colorBlack,
                              fontSize: deviceWidth * 0.018,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: deviceHeight * 0.012),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/circle-clock.png",
                                width: deviceHeight * 0.05,
                                height: deviceHeight * 0.05,
                              ),
                              SizedBox(width: deviceHeight * 0.02),
                              Text(
                                "Start time : Check availability",
                                style: TextStyle(
                                  color: colorBlack,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: deviceHeight * 0.012),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/circle-runclock.png",
                                width: deviceHeight * 0.05,
                                height: deviceHeight * 0.05,
                              ),
                              SizedBox(width: deviceHeight * 0.02),
                              Text(
                                "Duration : 4h",
                                style: TextStyle(
                                  color: colorBlack,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: deviceHeight * 0.012),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/circle-phone.png",
                                width: deviceHeight * 0.05,
                                height: deviceHeight * 0.05,
                              ),
                              SizedBox(width: deviceHeight * 0.02),
                              Text(
                                "Mobile Ticket",
                                style: TextStyle(
                                  color: colorBlack,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: deviceHeight * 0.012),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/circle-lang.png",
                                width: deviceHeight * 0.05,
                                height: deviceHeight * 0.05,
                              ),
                              SizedBox(width: deviceHeight * 0.02),
                              Text(
                                "Audio Guide : English",
                                style: TextStyle(
                                  color: colorBlack,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: deviceHeight * 0.012),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/circle-person.png",
                                width: deviceHeight * 0.05,
                                height: deviceHeight * 0.05,
                              ),
                              SizedBox(width: deviceHeight * 0.02),
                              Text(
                                "Ages 0.99, max of 98 per group",
                                style: TextStyle(
                                  color: colorBlack,
                                  fontSize: deviceWidth * 0.013,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      height: deviceHeight * 0.5,
                      padding: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.02,
                        horizontal: deviceWidth * 0.025,
                      ),
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
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: colorButtonBorder,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "From",
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.014,
                                    color: colorBlack,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: deviceHeight * 0.015),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$94 USD",
                                      style: TextStyle(
                                        fontSize: deviceWidth * 0.018,
                                        color: colorPrimary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: deviceWidth * 0.008),
                                    Text(
                                      "/adult",
                                      style: TextStyle(
                                        fontSize: deviceWidth * 0.017,
                                        color: colorHotelText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: deviceHeight * 0.01),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: colorButtonBorder,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: deviceHeight * 0.015),
                                Text(
                                  "Select data and travelers",
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.012,
                                    color: colorBlack,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: deviceHeight * 0.015),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    CompactDatePickerDemo(),
                                    Container(
                                      width: deviceWidth * 0.08,
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

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [

                                          InkWell(
                                            child: Image.asset(
                                              "assets/images/users.png",
                                              width: deviceHeight * 0.05,
                                              height: deviceHeight * 0.05,
                                            ),
                                            onTap: () => _selectUser(context),
                                          ),

                                          SizedBox(width: 6),
                                          Container(
                                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                            child: Text(
                                              _selectedUser == null
                                                  ? 'Select user'
                                                  : _dateFormat.format(_selectedUser!),
                                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),


                                SizedBox(height: deviceHeight * 0.01),
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
            ],
          ),
        ),
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
