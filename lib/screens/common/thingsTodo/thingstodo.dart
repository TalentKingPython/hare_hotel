import 'package:flutter/material.dart';
import 'package:hare_hotel/screens/common/attractionDetail/attraction_detail.dart';
import 'package:hare_hotel/screens/common/attractionReview/attraction_review.dart';

import '../../../utils/utils.dart';

class ThingsToDo extends StatefulWidget {
  const ThingsToDo({super.key});

  @override
  ThingsToDoState createState() => ThingsToDoState();
}

class ThingsToDoState extends State<ThingsToDo> {
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
        color: colorRed.withAlpha(25),
        borderRadius: BorderRadius.circular(deviceWidth * 0.02),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              openScreenWithResult(context, AttractionDetail());
            },
            child: SizedBox(
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
          ),
          GestureDetector(
            onTap: () => openScreenWithResult(context, AttractionReview()),
            child: Container(
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
                      SizedBox(width: deviceWidth * 0.005),
                      Text(
                        "4.8",
                        style: TextStyle(
                          color: colorBlack,
                          fontSize: deviceWidth * 0.016,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: deviceWidth * 0.005),
                      Text(
                        "(278 Reviews)",
                        style: TextStyle(
                          color: colorHotelText,
                          fontSize: deviceWidth * 0.015,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur ipsum",
                    style: TextStyle(
                      color: colorBlack,
                      fontSize: deviceWidth * 0.018,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "These Rankings are informed by Hare data - we consider traveler reviews & ratings",
                    style: TextStyle(
                      color: colorHotelText,
                      fontSize: deviceWidth * 0.012,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
          ),
        ],
      ),
    );
  }
}
