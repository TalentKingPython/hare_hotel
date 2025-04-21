import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/utils.dart';

class CarRental extends StatefulWidget {
  const CarRental({super.key});

  @override
  CarRentalState createState() => CarRentalState();
}

class CarRentalState extends State<CarRental> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Image.asset('assets/images/car.png'),
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
                      'Bergen Car Rentals',
                      style: TextStyle(
                        color: colorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.050,
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.4,
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
                              SvgPicture.asset('assets/svgs/car.svg'),
                              SizedBox(width: 10),
                              Text(
                                'Find Rental Cars',
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
                                'Browse Locations',
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
                        children: [
                          ElevatedButton(
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
                          ElevatedButton(
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
                                SvgPicture.asset('assets/svgs/calendar.svg'),
                                SizedBox(width: 5),
                                Text(
                                  'Date Pickup',
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.011,
                                  ),
                                ),
                                SizedBox(width: 30),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Colors.grey,
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                ),
                                SvgPicture.asset('assets/svgs/calendar.svg'),
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
                          ElevatedButton(
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
                                SvgPicture.asset('assets/svgs/multi-user.svg'),
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
                          ElevatedButton(
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
                                SvgPicture.asset('assets/svgs/user-box.svg'),
                                SizedBox(width: 5),
                                Text(
                                  'Driver Age',
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.011,
                                  ),
                                ),
                                SizedBox(width: 25),
                                Icon(Icons.expand_more),
                              ],
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
                              'Find Rental',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: deviceHeight * 0.03,
                  children: [
                    Text(
                      'Bergen Rental Car Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.025,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: colorButtonBorder,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: carInformationCard(
                              SvgPicture.asset('assets/svgs/bank-note.svg'),
                              'Average Rental Car Cost',
                              null,
                              '\$214',
                            ),
                          ),
                          Expanded(
                            child: carInformationCard(
                              SvgPicture.asset('assets/svgs/piggy-bank.svg'),
                              'Cheapest Rental Car Price',
                              'Vlokswagen golf ',
                              '(\$251 per day)',
                            ),
                          ),
                          Expanded(
                            child: carInformationCard(
                              SvgPicture.asset('assets/svgs/certificate.svg'),
                              'Most Popular Rental Type',
                              null,
                              'SUV',
                            ),
                          ),
                          Expanded(
                            child: carInformationCard(
                              SvgPicture.asset(
                                'assets/svgs/rental-car-wallet.svg',
                              ),
                              'Lowest Rental Car Price',
                              'Sixt ',
                              '(\$51 per day)',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: deviceHeight * 0.03,
                  children: [
                    Text(
                      'FAQs About Renting a Car in Bergen',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.025,
                      ),
                    ),
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
                        spacing: deviceHeight * 0.015,
                        children: [
                          faqCollapse(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                            true,
                          ),
                          Divider(color: colorButtonBorder),
                          faqCollapse(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                            false,
                          ),
                          Divider(color: colorButtonBorder),
                          faqCollapse(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                            false,
                          ),
                          Divider(color: colorButtonBorder),
                          faqCollapse(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                            false,
                          ),
                          Divider(color: colorButtonBorder),
                          faqCollapse(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                            false,
                          ),
                        ],
                      ),
                    ),
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
                        spacing: deviceHeight * 0.05,
                        children: [
                          Text(
                            'Find The Best Rental Car Deals in Bergen',
                            style: TextStyle(
                              fontSize: deviceWidth * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia',
                            style: TextStyle(
                              color: colorHotelText,
                              fontSize: deviceWidth * 0.0135,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: deviceHeight * 0.025,
                            children: [
                              Text(
                                'What You Need To Know When Renting a Car in Bergen',
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.025,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorWhite,
                                    child: Text(
                                      '01',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0135,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorWhite,
                                    child: Text(
                                      '02',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0135,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorWhite,
                                    child: Text(
                                      '03',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0135,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorWhite,
                                    child: Text(
                                      '04',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0135,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: deviceHeight * 0.025,
                            children: [
                              Text(
                                'Tips For Renting a Car in Bergen',
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.025,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorWhite,
                                    child: Text(
                                      '01',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0135,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorWhite,
                                    child: Text(
                                      '02',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0135,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorWhite,
                                    child: Text(
                                      '03',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0135,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorWhite,
                                    child: Text(
                                      '04',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.0135,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: deviceHeight * 0.032,
                            children: [
                              Text(
                                'Airport Serving Bergen',
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.025,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inc',
                                style: TextStyle(
                                  fontSize: deviceWidth * 0.0135,
                                  color: colorHotelText,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: deviceHeight * 0.05),
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
    );
  }

  Widget _attractionCard() {
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
                SizedBox(
                  height: deviceHeight * 0.4,
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

  Widget carInformationCard(
    Widget icon,
    String headline,
    String? description,
    String? price,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: colorGray),
          ),
          child: icon,
        ),
        SizedBox(width: deviceWidth * 0.01),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(headline, style: TextStyle(fontSize: deviceWidth * 0.013)),
              Row(
                children: [
                  if (description != null)
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: deviceWidth * 0.01,
                        color: colorHotelText,
                      ),
                    ),
                  if (price != null)
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: deviceWidth * 0.01,
                        color: colorPrimary,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget faqCollapse(String question, String answer, bool expanded) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                question,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: deviceWidth * 0.016,
                ),
              ),
              if (expanded)
                Text(
                  answer,
                  style: TextStyle(
                    color: colorHotelText,
                    fontSize: deviceWidth * 0.012,
                  ),
                ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: colorMainBackground,
          foregroundColor: colorBlack,
          maxRadius: deviceWidth * 0.013,
          child: Icon(
            expanded ? Icons.expand_less : Icons.expand_more,
            size: deviceWidth * 0.016,
          ),
        ),
      ],
    );
  }
}
