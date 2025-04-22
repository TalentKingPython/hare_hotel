import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:hare_hotel/screens/common/itinerary/itinerary_bloc.dart';
import 'package:hare_hotel/utils/utils.dart';

class Itinerary extends StatefulWidget {
  const Itinerary({super.key});

  @override
  ItineraryState createState() => ItineraryState();
}

class ItineraryState extends State<Itinerary> {
  ItineraryBloc? _bloc;
  final controller = Completer<GoogleMapController>();

  @override
  void initState() {
    _bloc = ItineraryBloc(context, this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: deviceHeight * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Home  /  Things To Do ",
                    style: TextStyle(
                      color: Color(0xFF101010),
                      fontSize: deviceWidth * 0.015,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/  Itinerary',
                    style: TextStyle(
                      color: colorRed,
                      fontSize: deviceWidth * 0.015,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: deviceWidth * 0.02,
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(deviceWidth * 0.02),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(deviceWidth * 0.02),
                        boxShadow: [
                          BoxShadow(
                            color: colorMainGray.withAlpha(50),
                            blurRadius: 10,
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Itinerary",
                            style: TextStyle(
                              fontSize: deviceWidth * 0.028,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Get ideas on what to do, see, and eat',
                            style: TextStyle(
                              color: colorHotelText,
                              fontSize: deviceWidth * 0.012,
                            ),
                          ),
                          SizedBox(height: deviceHeight * 0.05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: colorMainBackground,
                                      border: Border.all(
                                        color: colorButtonBorder,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        deviceWidth * 0.1,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(deviceWidth * 0.01),
                                    child: SvgPicture.asset(
                                      'assets/svgs/location-marker.svg',
                                      color: colorBlack,
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth * 0.01),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'You\'ll have 2 starting options',
                                        style: TextStyle(
                                          fontSize: deviceWidth * 0.014,
                                          color: colorBlack,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'See departure details',
                                        style: TextStyle(
                                          fontSize: deviceWidth * 0.011,
                                          color: colorPrimary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: deviceHeight * 0.06,
                                child: Center(
                                  child: DottedLine(
                                    direction: Axis.vertical,
                                    lineLength: deviceHeight * 0.04,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: colorPrimary.withAlpha(25),
                                      border: Border.all(
                                        color: colorPrimary.withAlpha(80),
                                      ),
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
                                  ),
                                  SizedBox(width: deviceWidth * 0.01),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        spacing: 5,
                                        children: [
                                          Text(
                                            'Osterfjorden',
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.014,
                                              color: colorBlack,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: colorMainBackground,
                                              border: Border.all(
                                                color: colorButtonBorder,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    deviceWidth * 0.1,
                                                  ),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: deviceWidth * 0.008,
                                              vertical: deviceWidth * 0.003,
                                            ),
                                            child: Row(
                                              spacing: 5,
                                              children: [
                                                Icon(
                                                  Icons.watch_later_outlined,
                                                  size: deviceWidth * 0.01,
                                                ),
                                                Text(
                                                  'Stop : 3 Hrs',
                                                  style: TextStyle(
                                                    fontSize:
                                                        deviceWidth * 0.008,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'See Detail',
                                        style: TextStyle(
                                          fontSize: deviceWidth * 0.011,
                                          color: colorPrimary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: deviceHeight * 0.06,
                                child: Center(
                                  child: DottedLine(
                                    direction: Axis.vertical,
                                    lineLength: deviceHeight * 0.04,
                                    dashColor: colorPrimary,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: colorPrimary.withAlpha(25),
                                      border: Border.all(
                                        color: colorPrimary.withAlpha(80),
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        deviceWidth * 0.1,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(deviceWidth * 0.01),
                                    child: Text(
                                      '02',
                                      style: TextStyle(
                                        color: colorPrimary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: deviceWidth * 0.013,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth * 0.01),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Mostraument',
                                            style: TextStyle(
                                              fontSize: deviceWidth * 0.014,
                                              color: colorBlack,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: colorMainBackground,
                                              border: Border.all(
                                                color: colorButtonBorder,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    deviceWidth * 0.1,
                                                  ),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: deviceWidth * 0.008,
                                              vertical: deviceWidth * 0.003,
                                            ),
                                            child: Row(
                                              spacing: 5,
                                              children: [
                                                Icon(
                                                  Icons.watch_later_outlined,
                                                  size: deviceWidth * 0.01,
                                                ),
                                                Text(
                                                  'Stop : 60 min',
                                                  style: TextStyle(
                                                    fontSize:
                                                        deviceWidth * 0.008,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'See Detail',
                                        style: TextStyle(
                                          fontSize: deviceWidth * 0.011,
                                          color: colorPrimary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: deviceHeight * 0.06,
                                child: Center(
                                  child: DottedLine(
                                    direction: Axis.vertical,
                                    lineLength: deviceHeight * 0.04,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: colorMainBackground,
                                      border: Border.all(
                                        color: colorButtonBorder,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        deviceWidth * 0.1,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(deviceWidth * 0.01),
                                    child: SvgPicture.asset(
                                      'assets/svgs/location-marker.svg',
                                      color: colorBlack,
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth * 0.01),
                                  Text(
                                    'You’ll return to the starting point',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.014,
                                      color: colorBlack,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(deviceWidth * 0.02),
                      child: googleMap(_bloc!),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceHeight * 0.05),
          ],
        ),
      ),
    );
  }

  googleMap(ItineraryBloc bloc) => StreamBuilder<List<Marker>>(
    stream: bloc.markersList,
    builder: (context, snap) {
      List<Marker>? markers = snap.data;
      return StreamBuilder(
        stream: bloc.polylinesList,
        builder: (context, polylinesSnap) {
          Map<PolylineId, Polyline>? polylines = polylinesSnap.data;
          return GoogleMap(
            zoomControlsEnabled: false,
            zoomGesturesEnabled: true,
            mapType: MapType.normal,
            markers:
                (markers != null && markers.isNotEmpty)
                    ? Set<Marker>.of(markers)
                    : <Marker>{},
            initialCameraPosition: initCameraPosition,
            onMapCreated: (value) {
              _bloc?.onMapCreated(value);
              controller.complete(value);
            },
            myLocationButtonEnabled: false,
            polylines:
                (polylines != null && polylines.isNotEmpty)
                    ? polylines.values.toSet()
                    : <Polyline>{},
          );
        },
      );
    },
  );
}
