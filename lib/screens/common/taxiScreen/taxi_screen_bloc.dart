import 'dart:async';
import 'dart:ui' as ui;
import 'package:intl/intl.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../blocs/bloc.dart';
import '../../../utils/utils.dart';
import '../../../utils/get_route_utils.dart';

class TaxiScreenBloc extends Bloc {
  String tag = "TaxiScreenBloc>>>";
  BuildContext context;
  GoogleMapController? googleMapController;
  CameraUpdate? cameraUpdate;
  LatLngBounds? bound;
  LatLng? centerBounds, driverPreviousLatLng, driverCurrentLatLong;
  Marker? markerDriver;
  bool? isFromPlacedOrder;

  State<StatefulWidget> state;

  TaxiScreenBloc(this.context, this.state) {
    addMarker();
  }

  final _markersListController = BehaviorSubject<List<Marker>>();
  final _polylinesListController = BehaviorSubject<Map<PolylineId, Polyline>>();
  final _rotateMarkerListController = BehaviorSubject<List<Marker>>();

  Stream<List<Marker>> get markersList => _markersListController.stream;

  Stream<Map<PolylineId, Polyline>> get polylinesList =>
      _polylinesListController.stream;

  Stream<List<Marker>> get rotateMarkers => _rotateMarkerListController.stream;

  Function(List<Marker>) get changeMarkerList =>
      _markersListController.sink.add;

  Function(Map<PolylineId, Polyline>) get changePolyLineList =>
      _polylinesListController.sink.add;

  Function(List<Marker>) get changeRotateMarker =>
      _rotateMarkerListController.sink.add;

  String formatDurationToString(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  getEstimateTime(String scheduleOrderDateTime) {
    DateTime orderTime = DateFormat(
      'yyyy-MM-dd HH:mm:ss',
    ).parse(scheduleOrderDateTime);
    Duration differnce = orderTime.difference(DateTime.now());
    if (differnce.inSeconds < 0) differnce = Duration.zero;
    return differnce;
  }

  addMarker() async {
    String pickupLatLong = "60.39299, 5.32415";
    String destinationLatLong = "60.38799, 5.33015";
    await GetRoutesUtils().getRoutes(pickupLatLong, destinationLatLong, [], (
      polyLines,
      duration,
      distance,
    ) async {
      changePolyLineList(polyLines);
    });
    BitmapDescriptor pickUpMarkerIcon = await getBitmapDescriptorFromAssetBytes(
      'assets/images/src-marker.png',
      (deviceAverageSize * 0.1).toInt(),
    );
    BitmapDescriptor destinationMarkerIcon =
        await getBitmapDescriptorFromAssetBytes(
          'assets/images/dst-maker.png',
          (deviceAverageSize * 0.1).toInt(),
        );

    List<Marker> markerList = [];
    List<String> arPickUpLatLong = pickupLatLong.split(',');
    List<String> arDestinationLatLong = destinationLatLong.split(',');
    LatLng pickUpLatLong = LatLng(
      double.parse(arPickUpLatLong[0]),
      double.parse(arPickUpLatLong[1]),
    );
    LatLng destinationLatLng = LatLng(
      double.parse(arDestinationLatLong[0]),
      double.parse(arDestinationLatLong[1]),
    );
    markerList.add(
      Marker(
        markerId: const MarkerId("PickUpMarker"),
        position: pickUpLatLong,
        icon: pickUpMarkerIcon,
        infoWindow: InfoWindow(title: "data.pickupAddress"),
      ),
    );
    markerList.add(
      Marker(
        markerId: const MarkerId("DestinationMarker"),
        position: destinationLatLng,
        icon: destinationMarkerIcon,
        infoWindow: InfoWindow(title: "data.destinationAddress"),
      ),
    );
    changeMarkerList(markerList);
    //Animate Map
    LatLng southwestLatLng, northeastLatLng;
    if (pickUpLatLong.latitude <= destinationLatLng.latitude) {
      southwestLatLng = pickUpLatLong;
      northeastLatLng = destinationLatLng;
    } else {
      southwestLatLng = destinationLatLng;
      northeastLatLng = pickUpLatLong;
    }
    bound = LatLngBounds(
      southwest: southwestLatLng,
      northeast: northeastLatLng,
    );
    centerBounds = LatLng(
      (bound!.northeast.latitude + bound!.southwest.latitude) / 2,
      (bound!.northeast.longitude + bound!.southwest.longitude) / 2,
    );
    cameraUpdate = CameraUpdate.newCameraPosition(
      CameraPosition(target: centerBounds!, zoom: 15),
    );
    if (googleMapController != null) {
      await animateMap();
    }
  }

  void focusInMap(
    GoogleMapController? googleMapController,
    double latitude,
    double longitude,
    bool isZoom,
  ) {
    isZoom
        ? googleMapController?.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(target: LatLng(latitude, longitude), zoom: 15.0),
          ),
        )
        : googleMapController?.getZoomLevel().then(
          (value) => googleMapController.moveCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(target: LatLng(latitude, longitude), zoom: value),
            ),
          ),
        );
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
      targetWidth: width,
    );
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(
      format: ui.ImageByteFormat.png,
    ))!.buffer.asUint8List();
  }

  Future<BitmapDescriptor> getBitmapDescriptorFromAssetBytes(
    String path,
    int width,
  ) async {
    final Uint8List imageData = await getBytesFromAsset(path, width);
    return BitmapDescriptor.fromBytes(imageData);
  }

  onMapCreated(GoogleMapController googleMapController) async {
    this.googleMapController = googleMapController;
    setMapStyle();
    await animateMap();
  }

  setMapStyle() async {
    googleMapController?.setMapStyle(
      await rootBundle.loadString('assets/mapStyle/map_style.txt'),
    );
  }

  animateMap() async {
    if (cameraUpdate != null && bound != null && centerBounds != null) {
      await googleMapController?.moveCamera(cameraUpdate!);
      await zoomToFit(googleMapController!, bound!, centerBounds!);
    }
  }

  @override
  void dispose() {
    googleMapController?.dispose();
  }
}
