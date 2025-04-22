import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hare_hotel/commonView/compact_date_picker.dart';
import 'package:hare_hotel/screens/common/itinerary/itinerary.dart';
import 'package:hare_hotel/screens/common/reservation/reservation.dart';
import 'package:hare_hotel/utils/utils.dart';

class AttractionReview extends StatefulWidget {
  const AttractionReview({super.key});

  @override
  AttractionReviewState createState() => AttractionReviewState();
}

class AttractionReviewState extends State<AttractionReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
        child: ListView(
          children: [
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
                    decoration: BoxDecoration(
                      color: colorWhite,
                      border: Border.all(color: colorWhite, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: deviceHeight * 0.025,
                      children: [
                        Column(
                          spacing: deviceHeight * 0.005,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svgs/write-pen.svg",
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
                          ],
                        ),
                        Text(
                          "Description",
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: deviceWidth * 0.016,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irureconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat",
                              softWrap: true,
                              maxLines: 3,
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
                                fontSize: deviceWidth * 0.013,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Facilities",
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: deviceWidth * 0.016,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                            ),
                          ],
                        ),

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
                            ),
                          ],
                        ),

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
                            ),
                          ],
                        ),

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
                            ),
                          ],
                        ),

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
                            ),
                          ],
                        ),
                        const Divider(height: 0),
                        Row(
                          children: [
                            Text(
                              "What's Include",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.016,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: deviceWidth * .023,
                              height: deviceWidth * .023,
                              decoration: BoxDecoration(
                                color: colorMainBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.expand_more),
                            ),
                          ],
                        ),
                        const Divider(height: 0),
                        Row(
                          children: [
                            Text(
                              "What to Expect",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.016,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: deviceWidth * .023,
                              height: deviceWidth * .023,
                              decoration: BoxDecoration(
                                color: colorMainBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.expand_more),
                            ),
                          ],
                        ),
                        const Divider(height: 0),
                        Row(
                          children: [
                            Text(
                              "Departure and return",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.016,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: deviceWidth * .023,
                              height: deviceWidth * .023,
                              decoration: BoxDecoration(
                                color: colorMainBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.expand_more),
                            ),
                          ],
                        ),
                        const Divider(height: 0),
                        Row(
                          children: [
                            Text(
                              "Accessibility",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.016,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: deviceWidth * .023,
                              height: deviceWidth * .023,
                              decoration: BoxDecoration(
                                color: colorMainBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.expand_more),
                            ),
                          ],
                        ),
                        const Divider(height: 0),
                        Row(
                          children: [
                            Text(
                              "Additional Information",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.016,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: deviceWidth * .023,
                              height: deviceWidth * .023,
                              decoration: BoxDecoration(
                                color: colorMainBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.expand_more),
                            ),
                          ],
                        ),
                        const Divider(height: 0),
                        Row(
                          children: [
                            Text(
                              "Cancellation Help",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.016,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: deviceWidth * .023,
                              height: deviceWidth * .023,
                              decoration: BoxDecoration(
                                color: colorMainBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.expand_more),
                            ),
                          ],
                        ),
                        const Divider(height: 0),
                        Row(
                          children: [
                            Text(
                              "Help",
                              style: TextStyle(
                                color: colorBlack,
                                fontSize: deviceWidth * 0.016,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: deviceWidth * .023,
                              height: deviceWidth * .023,
                              decoration: BoxDecoration(
                                color: colorMainBackground,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.expand_more),
                            ),
                          ],
                        ),
                        const Divider(height: 0),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Container(
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
                      spacing: deviceHeight * 0.015,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(
                            fontSize: deviceWidth * 0.014,
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                        const Divider(),
                        Text(
                          "Select date and travelers",
                          style: TextStyle(
                            fontSize: deviceWidth * 0.012,
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CompactDatePicker(),
                            Container(
                              width: deviceWidth * 0.08,
                              height: deviceHeight * 0.05,
                              padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.01,
                              ),
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
                                  SvgPicture.asset(
                                    'assets/svgs/multi-user.svg',
                                    width: deviceHeight * 0.02,
                                    height: deviceHeight * 0.02,
                                    color: colorBlack,
                                  ),
                                  SizedBox(width: deviceWidth * 0.01),
                                  Text('2', style: TextStyle(fontSize: 16)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '2 options available for 2/5',
                          style: TextStyle(
                            fontSize: deviceWidth * 0.01,
                            color: colorHotelText,
                          ),
                        ),
                        Text(
                          "Select date and travelers",
                          style: TextStyle(
                            fontSize: deviceWidth * 0.012,
                            color: colorBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        dateTravelerCard(
                          'Departure from Dreggekain',
                          popular: true,
                          checked: true,
                        ),
                        dateTravelerCard('Departure from Strandkaein'),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: colorWhite,
                              backgroundColor: colorPrimary,
                              padding: EdgeInsets.symmetric(
                                vertical: deviceWidth * 0.01,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  deviceWidth,
                                ),
                              ),
                            ),
                            onPressed: () {
                              openScreenWithResult(context, Reservation());
                            },
                            child: Text(
                              'Reserve Now',
                              style: TextStyle(fontSize: deviceWidth * 0.012),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgs/question-mark.svg'),
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                'Not sure? You can cancel this reservation up to 24 hours in advance a full refund',
                                style: TextStyle(fontSize: deviceWidth * 0.012),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Similar Experiences",
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
            SizedBox(height: deviceHeight * 0.02),
            Row(
              children: [attractionCard(), attractionCard(), attractionCard()],
            ),
          ],
        ),
      ),
    );
  }

  Widget dateTravelerCard(
    String title, {
    bool popular = false,
    bool checked = false,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: checked ? colorPrimary : colorButtonBorder,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(deviceWidth * 0.01),
      ),
      padding: EdgeInsets.all(deviceWidth * 0.015),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: deviceHeight * 0.015,
        children: [
          if (popular)
            Container(
              decoration: BoxDecoration(
                color: colorPrimary,
                borderRadius: BorderRadius.circular(deviceWidth * 0.1),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: deviceWidth * 0.008,
                vertical: deviceWidth * 0.003,
              ),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontSize: deviceWidth * 0.008,
                  color: colorWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: deviceWidth * 0.015,
                  color: colorBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (popular) SvgPicture.asset('assets/svgs/checked.svg'),
            ],
          ),
          const Divider(height: 0),
          Text(
            'Starting point',
            style: TextStyle(
              color: colorHotelText,
              fontSize: deviceWidth * 0.011,
            ),
          ),
          Row(
            spacing: 5,
            children: [
              Text(
                'Skur 8/Drenngakalen, Slottsanten 1,500',
                style: TextStyle(
                  fontSize: deviceWidth * 0.01,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Read more...',
                style: TextStyle(
                  fontSize: deviceWidth * 0.01,
                  color: colorPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '2 adults',
                style: TextStyle(
                  color: colorHotelText,
                  fontSize: deviceWidth * 0.011,
                ),
              ),
              Text(
                ' x \$94 USD',
                style: TextStyle(
                  fontSize: deviceWidth * 0.01,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            'Total \$188 USD',
            style: TextStyle(
              fontSize: deviceWidth * 0.015,
              color: colorPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '(Price includes taxes and booking fees)',
            style: TextStyle(
              color: colorHotelText,
              fontSize: deviceWidth * 0.011,
            ),
          ),
          const Divider(height: 0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: checked ? colorPrimary : colorButtonBorder,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(deviceWidth * 0.1),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.01,
              vertical: deviceWidth * 0.002,
            ),
            child: Text(
              '10:30 AM',
              style: TextStyle(
                color: checked ? colorPrimary : colorBlack,
                fontSize: deviceWidth * 0.013,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (popular)
            Text(
              '• Popular option base on the number of bookings on the Hare site over the past 60 days',
              style: TextStyle(
                color: colorHotelText,
                fontSize: deviceWidth * 0.011,
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
              horizontal: deviceHeight * 0.02,
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
                      'From ',
                      style: TextStyle(
                        fontSize: deviceWidth * 0.016,
                        color: colorBlack,
                      ),
                    ),
                    Text(
                      '\$94 USD',
                      style: TextStyle(
                        fontSize: deviceWidth * 0.018,
                        color: colorPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' /adult',
                      style: TextStyle(
                        fontSize: deviceWidth * 0.016,
                        color: colorHotelText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.02),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
