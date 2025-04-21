import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hare_hotel/screens/common/taxiScreen/taxi_screen_bloc.dart';

import '../../../utils/utils.dart';

class TaxiScreen extends StatefulWidget {
  const TaxiScreen({super.key});

  @override
  TaxiScreenState createState() => TaxiScreenState();
}

class TaxiScreenState extends State<TaxiScreen> {
  TaxiScreenBloc? _bloc;
  final controller = Completer<GoogleMapController>();

  @override
  void initState() {
    _bloc = TaxiScreenBloc(context, this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(deviceWidth * 0.015),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: googleMap(_bloc!),
          ),
        ),
        Positioned(
          top: deviceWidth * 0.035,
          left: deviceWidth * 0.035,
          right: deviceWidth * 0.035,
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
            padding: EdgeInsets.symmetric(
              horizontal: deviceWidth * 0.015,
              vertical: deviceWidth * 0.01,
            ),
            child: Row(
              spacing: deviceWidth * 0.01,
              children: [
                Flexible(
                  flex: 22,
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
                        Icon(Icons.my_location, size: deviceWidth * 0.015),
                        SizedBox(width: 5),
                        Text(
                          'Where should we pick you?',
                          style: TextStyle(fontSize: deviceWidth * 0.011),
                        ),
                        SizedBox(width: 30),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                        ),
                        SvgPicture.asset(
                          'assets/svgs/location-marker.svg',
                          color: colorHotelText,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Where are you going?',
                          style: TextStyle(fontSize: deviceWidth * 0.011),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 7,
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
                          'assets/svgs/calendar-center-check.svg',
                        ),
                        SizedBox(width: 5),
                        Text(
                          'When?',
                          style: TextStyle(fontSize: deviceWidth * 0.011),
                        ),
                        const Spacer(),
                        Icon(Icons.expand_more),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 7,
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
                          'Pay in Car',
                          style: TextStyle(
                            fontSize: deviceWidth * 0.011,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Icon(Icons.expand_more),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 7,
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
                          Icons.account_box_outlined,
                          size: deviceWidth * 0.015,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Max Price',
                          style: TextStyle(fontSize: deviceWidth * 0.011),
                        ),
                        const Spacer(),
                        Icon(Icons.expand_more),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
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
                      'Summary',
                      style: TextStyle(fontSize: deviceWidth * 0.011),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  googleMap(TaxiScreenBloc bloc) => StreamBuilder<List<Marker>>(
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
