import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hare_hotel/commonView/omnes_text.dart';
import 'package:hare_hotel/utils/utils.dart';

class Reservation extends StatefulWidget {
  const Reservation({super.key});

  @override
  ReservationState createState() => ReservationState();
}

class ReservationState extends State<Reservation> {
  int step = 1;
  TextStyle hintStyle = TextStyle(
    fontFamily: 'Omnes',
    fontWeight: FontWeight.w500,
    color: colorHotelText,
    fontSize: deviceWidth * 0.013,
  );

  @override
  Widget build(BuildContext context) {
    print('step $step');
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(deviceWidth * 0.05),
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Column(
            spacing: deviceHeight * 0.03,
            children: [
              Row(
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
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: deviceWidth * 0.01,
                children: [
                  step == 1
                      ? Container(
                        decoration: BoxDecoration(
                          color: colorPrimary.withAlpha(25),
                          border: Border.all(color: colorPrimary.withAlpha(80)),
                          borderRadius: BorderRadius.circular(
                            deviceWidth * 0.1,
                          ),
                        ),
                        padding: EdgeInsets.all(deviceWidth * 0.01),
                        child: Text(
                          '01',
                          style: TextStyle(
                            color: colorPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: deviceWidth * 0.013,
                          ),
                        ),
                      )
                      : SvgPicture.asset('assets/svgs/checked-red.svg'),
                  Text(
                    'Contact Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: deviceWidth * 0.013,
                    ),
                  ),
                  DottedLine(
                    lineLength: deviceWidth * 0.025,
                    dashColor: step > 1 ? colorPrimary : colorBlack,
                  ),
                  step != 3
                      ? Container(
                        decoration: BoxDecoration(
                          color:
                              step == 1
                                  ? colorWhite
                                  : colorPrimary.withAlpha(25),
                          border: Border.all(
                            color:
                                step == 1
                                    ? colorButtonBorder
                                    : colorPrimary.withAlpha(80),
                          ),
                          borderRadius: BorderRadius.circular(
                            deviceWidth * 0.1,
                          ),
                        ),
                        padding: EdgeInsets.all(deviceWidth * 0.01),
                        child: Text(
                          '02',
                          style: TextStyle(
                            color: step == 1 ? colorBlack : colorPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: deviceWidth * 0.013,
                          ),
                        ),
                      )
                      : SvgPicture.asset('assets/svgs/checked-red.svg'),
                  Text(
                    'Activity Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: deviceWidth * 0.013,
                    ),
                  ),
                  DottedLine(
                    lineLength: deviceWidth * 0.025,
                    dashColor: step > 2 ? colorPrimary : colorBlack,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color:
                          step != 3 ? colorWhite : colorPrimary.withAlpha(25),
                      border: Border.all(
                        color:
                            step != 3
                                ? colorButtonBorder
                                : colorPrimary.withAlpha(80),
                      ),
                      borderRadius: BorderRadius.circular(deviceWidth * 0.1),
                    ),
                    padding: EdgeInsets.all(deviceWidth * 0.01),
                    child: Text(
                      '03',
                      style: TextStyle(
                        color: step != 3 ? colorBlack : colorPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.013,
                      ),
                    ),
                  ),
                  Text(
                    'Payment Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: deviceWidth * 0.013,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: deviceWidth * 0.015,
                children: [
                  Flexible(
                    flex: 11,
                    child:
                        step == 1
                            ? contactDetails()
                            : step == 2
                            ? activityDetails()
                            : paymentDetails(),
                  ),
                  Flexible(
                    flex: 7,
                    child: Column(
                      spacing: deviceHeight * 0.02,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: colorRed.withAlpha(25),
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.01,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: deviceHeight * 0.015,
                                ),
                                child: OmnesText(
                                  'Non-Refunable',
                                  color: colorPrimary,
                                  fontSize: deviceWidth * 0.012,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: colorWhite,
                                  borderRadius: BorderRadius.circular(
                                    deviceWidth * 0.01,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: colorMainGray.withAlpha(25),
                                      blurRadius: 10,
                                      offset: Offset(3, 3),
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: deviceWidth * 0.02,
                                  vertical: deviceHeight * 0.025,
                                ),
                                child: Column(
                                  spacing: deviceHeight * 0.01,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            deviceWidth * 0.008,
                                          ),
                                          child: Image.asset(
                                            'assets/images/bergen_hotel_1.png',
                                            height: deviceWidth * 0.07,
                                            width: deviceWidth * 0.08,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          spacing: deviceHeight * 0.01,
                                          children: [
                                            Text(
                                              'Lorem ipsum dolor sit amet,',
                                              style: TextStyle(
                                                color: colorBlack,
                                                fontWeight: FontWeight.bold,
                                                fontSize: deviceWidth * 0.012,
                                              ),
                                            ),
                                            Row(
                                              spacing: 5,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: colorYellow,
                                                ),
                                                Text(
                                                  '4.8',
                                                  style: TextStyle(
                                                    color: colorBlack,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        deviceWidth * 0.012,
                                                  ),
                                                ),
                                                Text(
                                                  '(278 Reviews)',
                                                  style: TextStyle(
                                                    color: colorHotelText,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        deviceWidth * 0.012,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              spacing: 5,
                                              children: [
                                                OmnesText(
                                                  'By',
                                                  color: colorHotelText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: deviceWidth * 0.012,
                                                ),
                                                OmnesText(
                                                  'Norwayfarers',
                                                  color: colorPrimary,
                                                  fontSize: deviceWidth * 0.012,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Date',
                                          style: TextStyle(
                                            color: colorHotelText,
                                            fontSize: deviceWidth * 0.012,
                                          ),
                                        ),
                                        Text(
                                          'Tuesday, February 4, 2025',
                                          style: TextStyle(
                                            color: colorBlack,
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceWidth * 0.012,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Time',
                                          style: TextStyle(
                                            color: colorHotelText,
                                            fontSize: deviceWidth * 0.012,
                                          ),
                                        ),
                                        Text(
                                          '5:15 PM',
                                          style: TextStyle(
                                            color: colorBlack,
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceWidth * 0.012,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Travelers',
                                          style: TextStyle(
                                            color: colorHotelText,
                                            fontSize: deviceWidth * 0.012,
                                          ),
                                        ),
                                        Text(
                                          '2 Adults',
                                          style: TextStyle(
                                            color: colorBlack,
                                            fontWeight: FontWeight.bold,
                                            fontSize: deviceWidth * 0.012,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'TOTAL',
                                          style: TextStyle(
                                            color: colorBlack,
                                            fontSize: deviceWidth * 0.012,
                                          ),
                                        ),
                                        OmnesText(
                                          '\$87.76',
                                          color: colorPrimary,
                                          fontSize: deviceWidth * 0.013,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: colorWhite,
                            borderRadius: BorderRadius.circular(
                              deviceWidth * 0.01,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: colorMainGray.withAlpha(25),
                                blurRadius: 10,
                                offset: Offset(3, 3),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: deviceWidth * 0.02,
                            vertical: deviceHeight * 0.025,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: deviceHeight * 0.02,
                            children: [
                              OmnesText(
                                'Book With Confidence',
                                fontSize: deviceWidth * 0.018,
                                fontWeight: FontWeight.w500,
                              ),
                              Divider(height: 0),
                              Row(
                                spacing: deviceWidth * 0.005,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: colorMainBackground,
                                      borderRadius: BorderRadius.circular(
                                        deviceWidth,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(deviceWidth * 0.01),
                                    child: SvgPicture.asset(
                                      'assets/svgs/wallet.svg',
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: deviceHeight * 0.01,
                                    children: [
                                      OmnesText(
                                        'Lowest price guarantee',
                                        fontSize: deviceWidth * 0.013,
                                      ),
                                      OmnesText(
                                        'Find it cheaper? We’ll refund the difference',
                                        color: colorHotelText,
                                        fontSize: deviceWidth * 0.012,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                spacing: deviceWidth * 0.005,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: colorMainBackground,
                                      borderRadius: BorderRadius.circular(
                                        deviceWidth,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(deviceWidth * 0.01),
                                    child: SvgPicture.asset(
                                      'assets/svgs/lock.svg',
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: deviceHeight * 0.01,
                                    children: [
                                      OmnesText(
                                        'Privacy Protection',
                                        fontSize: deviceWidth * 0.013,
                                      ),
                                      OmnesText(
                                        'We use SSL encryption to keep your data secure',
                                        color: colorHotelText,
                                        fontSize: deviceWidth * 0.012,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                spacing: deviceWidth * 0.005,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: colorMainBackground,
                                      borderRadius: BorderRadius.circular(
                                        deviceWidth,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(deviceWidth * 0.01),
                                    child: SvgPicture.asset(
                                      'assets/svgs/headphones.svg',
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: deviceHeight * 0.01,
                                    children: [
                                      OmnesText(
                                        '24/7 Global Support',
                                        fontSize: deviceWidth * 0.013,
                                      ),
                                      OmnesText(
                                        'Get the answer you need, when you need them',
                                        color: colorHotelText,
                                        fontSize: deviceWidth * 0.012,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: deviceWidth * 0.005,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: colorMainBackground,
                                      borderRadius: BorderRadius.circular(
                                        deviceWidth,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(deviceWidth * 0.01),
                                    child: SvgPicture.asset(
                                      'assets/svgs/phone.svg',
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: deviceHeight * 0.01,
                                    children: [
                                      OmnesText(
                                        'Give us a call',
                                        fontSize: deviceWidth * 0.013,
                                      ),
                                      OmnesText(
                                        'We’d be happy  to help your out with your booking',
                                        color: colorHotelText,
                                        fontSize: deviceWidth * 0.012,
                                      ),
                                      OmnesText(
                                        'Call now : +1 855 275 5071',
                                        color: colorPrimary,
                                        fontSize: deviceWidth * 0.012,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactDetails() {
    return Container(
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(deviceWidth * 0.01),
        boxShadow: [
          BoxShadow(
            color: colorMainGray.withAlpha(25),
            blurRadius: 10,
            offset: Offset(3, 3),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.02,
        vertical: deviceHeight * 0.025,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: deviceHeight * 0.048,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: deviceHeight * 0.01,
            children: [
              OmnesText('Contact Details', fontSize: deviceWidth * 0.03),
              OmnesText(
                'We’ll use this information to send you confirmation and updates aout your booking',
                fontSize: deviceWidth * 0.015,
                color: colorHotelText,
              ),
            ],
          ),
          Column(
            spacing: deviceHeight * 0.03,
            children: [
              Divider(height: 1),
              Row(
                spacing: deviceWidth * 0.015,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: deviceHeight * 0.018,
                      children: [
                        OmnesText('First Name', fontSize: deviceWidth * 0.014),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Your first name',
                            hintStyle: hintStyle,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.1,
                              ),
                              borderSide: BorderSide(color: colorButtonBorder),
                            ),
                            contentPadding: EdgeInsets.all(deviceWidth * 0.01),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: deviceHeight * 0.018,
                      children: [
                        OmnesText('Last Name', fontSize: deviceWidth * 0.014),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Your last name',
                            hintStyle: hintStyle,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.1,
                              ),
                              borderSide: BorderSide(color: colorButtonBorder),
                            ),
                            contentPadding: EdgeInsets.all(deviceWidth * 0.01),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                spacing: deviceWidth * 0.015,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: deviceHeight * 0.018,
                      children: [
                        OmnesText('Email', fontSize: deviceWidth * 0.014),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Your email',
                            hintStyle: hintStyle,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.1,
                              ),
                              borderSide: BorderSide(color: colorButtonBorder),
                            ),
                            contentPadding: EdgeInsets.all(deviceWidth * 0.01),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: deviceHeight * 0.018,
                      children: [
                        OmnesText(
                          'Phone Number',
                          fontSize: deviceWidth * 0.014,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Your phone number',
                            hintStyle: hintStyle,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                deviceWidth * 0.1,
                              ),
                              borderSide: BorderSide(color: colorButtonBorder),
                            ),
                            contentPadding: EdgeInsets.all(deviceWidth * 0.01),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                spacing: deviceWidth * 0.005,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/checked.svg',
                    height: deviceWidth * 0.014,
                    width: deviceWidth * 0.014,
                  ),
                  OmnesText(
                    'Receive SMS updates about your booking. Message rates may apply',
                    color: colorHotelText,
                    fontSize: deviceWidth * 0.013,
                  ),
                ],
              ),
              Divider(height: 1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: deviceHeight * 0.018,
                children: [
                  OmnesText('Promo Code', fontSize: deviceWidth * 0.014),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your promo code',
                      hintStyle: hintStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(deviceWidth * 0.1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(deviceWidth * 0.1),
                        borderSide: BorderSide(color: colorButtonBorder),
                      ),
                      contentPadding: EdgeInsets.all(deviceWidth * 0.01),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: deviceWidth,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth),
                ),
                padding: EdgeInsets.symmetric(vertical: deviceWidth * 0.01),
              ),
              onPressed: () {
                setState(() {
                  step = 2;
                });
              },
              child: OmnesText(
                'Next',
                fontSize: deviceWidth * 0.013,
                color: colorWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget activityDetails() {
    return Container(
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(deviceWidth * 0.01),
        boxShadow: [
          BoxShadow(
            color: colorMainGray.withAlpha(25),
            blurRadius: 10,
            offset: Offset(3, 3),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.02,
        vertical: deviceHeight * 0.025,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: deviceHeight * 0.048,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: deviceHeight * 0.01,
            children: [
              OmnesText('Activity Details', fontSize: deviceWidth * 0.03),
              OmnesText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
                fontSize: deviceWidth * 0.015,
                color: colorHotelText,
              ),
            ],
          ),
          Row(
            spacing: deviceWidth * 0.015,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: deviceHeight * 0.018,
                  children: [
                    OmnesText('First Name', fontSize: deviceWidth * 0.014),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Your first name',
                        hintStyle: hintStyle,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            deviceWidth * 0.1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            deviceWidth * 0.1,
                          ),
                          borderSide: BorderSide(color: colorButtonBorder),
                        ),
                        contentPadding: EdgeInsets.all(deviceWidth * 0.01),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: deviceHeight * 0.018,
                  children: [
                    OmnesText('Last Name', fontSize: deviceWidth * 0.014),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Your last name',
                        hintStyle: hintStyle,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            deviceWidth * 0.1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            deviceWidth * 0.1,
                          ),
                          borderSide: BorderSide(color: colorButtonBorder),
                        ),
                        contentPadding: EdgeInsets.all(deviceWidth * 0.01),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: deviceWidth,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(deviceWidth),
                ),
                padding: EdgeInsets.symmetric(vertical: deviceWidth * 0.01),
              ),
              onPressed: () {
                setState(() {
                  step = 3;
                });
              },
              child: OmnesText(
                'Next',
                fontSize: deviceWidth * 0.013,
                color: colorWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget paymentDetails() {
    return Container(
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(deviceWidth * 0.01),
        boxShadow: [
          BoxShadow(
            color: colorMainGray.withAlpha(25),
            blurRadius: 10,
            offset: Offset(3, 3),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: deviceWidth * 0.02,
        vertical: deviceHeight * 0.025,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: deviceHeight * 0.048,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: deviceHeight * 0.01,
            children: [
              OmnesText('Payment Details', fontSize: deviceWidth * 0.03),
              OmnesText(
                'We’ll use this information to send you confirmation and updates aout your booking',
                fontSize: deviceWidth * 0.015,
                color: colorHotelText,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: deviceHeight * 0.01,
            children: [
              OmnesText(
                'Payment method',
                color: colorBlack,
                fontSize: deviceWidth * 0.013,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: colorButtonBorder),
                  borderRadius: BorderRadius.circular(deviceWidth),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.015,
                  vertical: deviceWidth * 0.01,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/checked.svg',
                      width: deviceWidth * 0.016,
                      height: deviceWidth * 0.016,
                    ),
                    SizedBox(width: deviceWidth * 0.01),
                    OmnesText(
                      'Credit/Debit Card',
                      color: colorBlack,
                      fontSize: deviceWidth * 0.013,
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'assets/svgs/visa_logo.svg',
                      height: deviceWidth * 0.014,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: colorButtonBorder),
                  borderRadius: BorderRadius.circular(deviceWidth),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.015,
                  vertical: deviceWidth * 0.01,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/unchecked.svg',
                      width: deviceWidth * 0.016,
                      height: deviceWidth * 0.016,
                    ),
                    SizedBox(width: deviceWidth * 0.01),
                    OmnesText(
                      'Paypal',
                      color: colorBlack,
                      fontSize: deviceWidth * 0.013,
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'assets/svgs/paypal_logo.svg',
                      height: deviceWidth * 0.014,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: colorButtonBorder),
                  borderRadius: BorderRadius.circular(deviceWidth),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.015,
                  vertical: deviceWidth * 0.01,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/unchecked.svg',
                      width: deviceWidth * 0.016,
                      height: deviceWidth * 0.016,
                    ),
                    SizedBox(width: deviceWidth * 0.01),
                    OmnesText(
                      'Google Play',
                      color: colorBlack,
                      fontSize: deviceWidth * 0.013,
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/google_play_logo.png',
                      height: deviceWidth * 0.013,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            spacing: deviceHeight * 0.032,
            children: [
              Column(
                children: [
                  Row(children: []),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: deviceWidth * 0.013,
                      color: colorHotelText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: deviceWidth,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(deviceWidth),
                    ),
                    padding: EdgeInsets.symmetric(vertical: deviceWidth * 0.01),
                  ),
                  onPressed: () {},
                  child: OmnesText(
                    'Next',
                    fontSize: deviceWidth * 0.013,
                    color: colorWhite,
                  ),
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: deviceWidth * 0.013,
                  color: colorHotelText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
