import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hare_hotel/l10n/app_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hare_hotel/commonView/customCountryCodePicker/custom_country_code_picker.dart';
import 'package:hare_hotel/commonView/load_image_with_placeholder.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/timezone.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'shared_pref_utill.dart';
import '../screens/base_dl.dart';
import '../googleApi/geocoding_api_call.dart';
import '../blocs/bloc.dart';
import '../constant/constant.dart';
import '../main.dart';
import '../screens/splash/splash.dart';
import '../screens/login/login_dl.dart';

export '../commonView/load_image_with_placeholder.dart';
export '../constant/constant.dart';
export '../main.dart';
export 'get_location_utils.dart';
export 'shared_pref_utill.dart';

String tag = "Utils>>>";

getPlaceQuery(String text, double latitude, double longitude) {
  return "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$text&location=$latitude,$longitude&radius=20&sensor=true&key=";
}

getPlaceIDQuery(String placeId) {
  return "https://maps.googleapis.com/maps/api/place/details/json?placeid=$placeId&language=en&sensor=true&key=";
}

getGeoCodingQuery(double latitude, double longitude) {
  return "https://maps.google.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=";
}

getGeoCodingAddress(String keyword, String country) {
  return "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$keyword&components=country:${getCountryISOCodeFromName(country)}&types=address&key=";
}

String getAmountWithCurrency(dynamic amount) {
  String selectedCurrency = prefGetString(prefSelectedCurrency);
  if (selectedCurrency.isEmpty) {
    selectedCurrency = defaultCurrency;
  }
  return "$selectedCurrency ${amount.toStringAsFixed(2)}";
}

String getAmountCurrency(dynamic value) {
  String selectedCurrency = prefGetString(prefSelectedCurrency);

  if (value == null) {
    StackTrace.current;
  }
  double d = value.toDouble();

  return "$selectedCurrency ${d.toStringAsFixed(2)}";
}

Future<void> openUrl(
  String url, {
  LaunchMode launchMode = LaunchMode.externalApplication,
}) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url, mode: launchMode);
  } else {
    logd(tag, "Error");
  }
}

Future<void> openUrlInStore(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url, mode: LaunchMode.externalNonBrowserApplication);
  } else {
    logd(tag, "Error");
  }
}

void openScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.fastOutSlowIn;
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(curvedAnimation),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => screen,
    ),
    // MaterialPageRoute(builder: (context) => screen),
  );
}

void openScreenWithReplacePrevious(BuildContext context, Widget screen) {
  Navigator.of(context).pushReplacement(
    // MaterialPageRoute(builder: (BuildContext context) => screen),
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.fastOutSlowIn;
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(curvedAnimation),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => screen,
    ),
  );
}

void openScreenWithClearPrevious(BuildContext context, Widget screen) {
  Navigator.of(context).pushAndRemoveUntil(
    // MaterialPageRoute(builder: (BuildContext context) => screen),
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.fastOutSlowIn;
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(curvedAnimation),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => screen,
    ),
    (route) => false,
  );
}

void openBottomModalSheet(BuildContext context, Widget screen) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    builder: (BuildContext context) {
      return screen;
    },
  );
}

Future openScreenWithResult(BuildContext context, Widget screen) async {
  return await Navigator.push(
    context,
    // MaterialPageRoute(builder: (context) => screen),
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.fastOutSlowIn;
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );
        return FadeTransition(
          opacity: curvedAnimation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(curvedAnimation),
            child: child,
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (_, __, ___) => screen,
    ),
  );
}

BoxDecoration getStatusBorder(Color color, {bool? isLeft}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadiusDirectional.only(
      topStart: (isLeft ?? false) ? zeroRadius : topLeftRadiusStatus,
      bottomStart: (isLeft ?? false) ? zeroRadius : bottomLeftRadiusStatus,
      topEnd: (isLeft ?? true) ? topRightRadiusStatus : zeroRadius,
      bottomEnd: (isLeft ?? true) ? bottomRightRadiusStatus : zeroRadius,
    ),
  );
}

openSimpleSnackbar(String title, {duration = 3, void Function()? onPressed}) {
  if (rootScaffoldMessengerKey.currentState != null) {
    rootScaffoldMessengerKey.currentState?.clearSnackBars();
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: InkWell(
          onTap: onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoadImageSimple(
                image: 'assets/images/notification.png',
                height: 70,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: colorBlack.withAlpha(13),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: const Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: colorWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        duration: Duration(seconds: duration),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
      ),
    );
  }
}

getAddressTypeInString(BuildContext context, String? type) {
  switch (type) {
    case home:
      return languages.home;
    case work:
      return languages.work;
    case other:
      return languages.other;
    default:
      return languages.home;
  }
}

getPaymentType(BuildContext context, int paymentType) {
  switch (paymentType) {
    case paymentTypeCash:
      return languages.cash;
    case paymentTypeCard:
      return languages.card;
    case paymentTypeWallet:
      return languages.wallet;
    default:
      return languages.cash;
  }
}

getAddressTypeInInt(String type) {
  switch (type) {
    case home:
      return 0;
    case work:
      return 1;
    case other:
      return 2;
    default:
      return 0;
  }
}

getAddressTypeIntToString(int type) {
  switch (type) {
    case 0:
      return home.toLowerCase();
    case 1:
      return work.toLowerCase();
    case 2:
      return other.toLowerCase();
    default:
      return home.toLowerCase();
  }
}

Future<TimeOfDay?> selectTime(BuildContext context) {
  final now = DateTime.now().add(const Duration(minutes: 61));

  return showTimePicker(
    context: context,
    initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
    builder: (BuildContext? context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          primaryColor: colorPrimary,
          colorScheme: const ColorScheme.light(
            primary: colorPrimary,
            secondary: colorPrimary,
          ),
          buttonTheme: const ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        child: child!,
      );
    },
  );
}

Future<DateTime?> selectDate(
  BuildContext context,
  int startSecond,
  int lastDay,
) => showDatePicker(
  context: context,
  initialDate: DateTime.now().add(Duration(hours: 1, seconds: startSecond)),
  firstDate: DateTime.now().add(const Duration(hours: 1)),
  lastDate: DateTime.now().add(Duration(hours: 1, days: lastDay)),
  builder: (BuildContext? context, Widget? child) {
    return Theme(
      data: ThemeData.light().copyWith(
        primaryColor: colorPrimary,
        colorScheme: const ColorScheme.light(
          primary: colorPrimary,
          secondary: colorPrimary,
        ),
        buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
      ),
      child: child!,
    );
  },
);

isApiStatus(
  BuildContext context,
  int? status,
  String? message,
  bool? isLogout, {
  bool showMess = true,
  int messageCode = 0,
  List<int> hideMessOnCodeList = const [],
}) {
  if (status == 3) showMess = false;

  //API STATUS
  //0 = false
  //1 = true
  //2 = registration pending
  //3 = app user blocked
  //4 = app user access token not match
  //5 = app user not found

  switch (status) {
    case 0:
      showApiMessage(
        context,
        showMess,
        message!,
        messageCode,
        hideMessOnCodeList,
      );
      return false;
    case 1:
      return true;
    case 2:
      showApiMessage(
        context,
        showMess,
        message!,
        messageCode,
        hideMessOnCodeList,
      );
      // openScreenWithResult(context, const OtpVerify());
      return false;
    case 3:
      // showSimpleDialogWithMessAndLogout(context, message!);
      return false;
    case 4:
    case 5:
      showApiMessage(
        context,
        showMess,
        message!,
        messageCode,
        hideMessOnCodeList,
      );
      if (isLogout!) {
        logout(context);
      }
      return false;
  }
  return false;
}

showApiMessage(
  BuildContext context,
  bool showMess,
  String message,
  int messageCode,
  List<int> hideMessOnCodeList,
) {
  if (showMess) {
    if (!(hideMessOnCodeList.isNotEmpty &&
        hideMessOnCodeList.contains(messageCode))) {
      openSimpleSnackbar(message);
    }
  }
}

// isApiStatus(BuildContext context, int status, String message, bool isLogout) {
//   //API STATUS
//   //0 = false
//   //1 = true
//   //2 = registration pending
//   //3 = app user blocked
//   //4 = app user access token not match
//   //5 = app user not found
//   switch (status) {
//     case 0:
//       return false;
//     case 1:
//       return true;
//     case 2:
//       openScreenWithResult(context, const OtpVerify());
//       return false;
//     case 3:
//       showSimpleDialogWithMessAndLogout(context, message);
//       return false;
//     case 4:
//     case 5:
//       if (isLogout) {
//         logout(context);
//       }
//       return false;
//   }
//   return false;
// }

String getServiceName(int serviceCatId) {
  if (serviceCatId == 1) {
    return languages.bikeRide;
  } else if (serviceCatId == 2) {
    return languages.taxiRide;
  } else if (serviceCatId == 4) {
    return languages.courierService;
  } else {
    return "";
  }
}

logout(BuildContext context) async {
  // clearFCMToken().then((value) {
  //   FirebaseAuth.instance.signOut();
  // });
  prefClearWithRemainSomeData();
  openScreenWithClearPrevious(context, const Splash());
}

getApiMsg(BuildContext context, int? messageCode, String? defaultMsg) {
  return defaultMsg ?? "";
  // var msgKey = "api_msg_$messageCode";
  // if (languages.apiMsg.containsKey(msgKey)) {
  //   return languages.apiMsg[msgKey];
  // } else {
  //   return defaultMsg ?? "";
  // }
}

isLoggedIn() {
  if (prefGetInt(prefUserId) != 0 && prefGetInt(prefUserVerified) == 1) {
    return true;
  }
  return false;
}

isUserLoginFromSocial() {
  if (prefGetString(prefLoginType) == loginTypeEmail) {
    return false;
  }
  return true;
}

isEmailOrNumNull() {
  if (prefGetString(prefEmail).trim().isEmpty ||
      prefGetString(prefContactNumber).trim().isEmpty) {
    return true;
  }
  return false;
}

isUserVerified() {
  if (prefGetInt(prefUserVerified) == 1) {
    return true;
  }
  return false;
}

manageLoginResponse(BuildContext context, LoginPojo response) {
  String message = getApiMsg(context, response.messageCode, response.message);
  if (isApiStatus(context, response.status, message, false)) {
    setDataInPref(response);
    // if (isEmailOrNumNull()) {
    //   openScreenWithClearPrevious(context, RequiredInformation());
    // } else {
    if (isUserVerified()) {
      // openScreenWithClearPrevious(
      //   context,
      //   const HomeMainV1(isShowDialog: true),
      // );
    } else {
      prefGetString('prefContactNumber');
      // openScreenWithResult(context, const OtpVerify());
    }
    // }
  }
}

setDataInPref(LoginPojo body) {
  prefSetInt(prefUserId, body.userId);
  prefSetString(prefAccessToken, body.accessToken);
  prefSetString(prefUserName, body.userName);
  prefSetString(prefEmail, body.email);
  prefSetString(prefLoginType, body.loginType);
  prefSetString(prefProfileImage, body.profileImage);
  prefSetString(prefContactNumber, body.contactNumber);
  prefSetString(prefReferralCode, body.referralCode);
  if (body.selectCountryCode.trim().isNotEmpty) {
    prefSetString(prefCountryCode, body.selectCountryCode);
  }
  prefSetString(prefSelectedCurrency, body.selectCurrency);
  prefSetString(prefSelectedLanguageCode, body.selectLanguage);
  prefSetString(prefServerTimeZone, body.serverTimeZone);
  prefSetInt(prefUserVerified, body.userVerified);
  double roundedValue = (body.credit * 100).round() / 100;
  prefSetString(prefHareCredit, roundedValue.toStringAsFixed(2));
  prefSetString(prefEmergencyContact, body.emergencyContact);
}

setKeyValuePair(
  List<KeyValueModel> keyValuesList,
  bool setDivider,
  bool setBold,
  String key,
  String? value, {
  Function()? setButton,
  bool setValueWithCurrency = true,
}) {
  if (value != null && value.isNotEmpty) {
    if (double.tryParse(value) != null) {
      if (double.parse(value) > 0) {
        if (setValueWithCurrency) {
          keyValuesList.add(
            KeyValueModel(
              setDivider,
              setBold,
              key,
              getAmountWithCurrency(double.parse(value)),
              setButton: setButton,
            ),
          );
        } else {
          keyValuesList.add(
            KeyValueModel(
              setDivider,
              setBold,
              key,
              value,
              setButton: setButton,
            ),
          );
        }
      }
    } else {
      keyValuesList.add(
        KeyValueModel(setDivider, setBold, key, value, setButton: setButton),
      );
    }
  }
}

BoxDecoration getBoxDecoration({
  Color color = Colors.white,
  double radius = 0.0,
  BoxBorder? border,
}) {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    color: color,
    border: border,
  );
}

String convertFullDateTimeToTime(String fullDateTime) {
  try {
    return DateFormat("h:mm a", selectedLocale.languageCode).format(
      DateFormat(
        "yyyy-MM-dd HH:mm:ss",
        selectedLocale.languageCode,
      ).parse(fullDateTime),
    );
  } on Exception {
    return "";
  }
}

bool isRtl() {
  if (selectedLocale.languageCode == 'ar' ||
      selectedLocale.languageCode == 'fa' ||
      selectedLocale.languageCode == 'he' ||
      selectedLocale.languageCode == 'ps' ||
      selectedLocale.languageCode == 'ur') {
    return true;
  }
  return false;
}

String getCurrentTime() {
  return DateFormat(
    "yyyy-MM-dd HH:mm:ss",
    selectedLocale.languageCode,
  ).format(DateTime.now());
}

String getCurrentTimeEnglish() {
  return DateFormat("yyyy-MM-dd HH:mm:ss", 'en').format(DateTime.now().toUtc());
}

double getDoubleFromDynamic(dynamic value) {
  return double.parse(value.toString());
}

String getDateTime(
  String ourDate, {
  String returnFormat = "yyyy-MM-dd hh:mm aa",
  String format = "yyyy-MM-dd HH:mm:ss",
  bool useLocalTime = false,
}) {
  String serverTimeZone = prefGetString(prefServerTimeZone);
  bool isUtc = (serverTimeZone.toUpperCase() == "UTC");
  var parse = DateFormat(format).parse(ourDate, isUtc);

  var detroit =
      useLocalTime
          ? tz.getLocation(localTimeZone)
          : isUtc
          ? tz.UTC
          : tz.getLocation(serverTimeZone);
  var now = tz.TZDateTime(
    detroit,
    parse.year,
    parse.month,
    parse.day,
    parse.hour,
    parse.minute,
    parse.second,
  );
  var convertedDate = tz.TZDateTime.from(now, tz.getLocation(localTimeZone));

  var formatDate = DateFormat(
    returnFormat,
    selectedLocale.languageCode,
  ).format(convertedDate);
  return formatDate;
}

DateTime getTimeAndDateObj(String ourDate) {
  String serverTimeZone = prefGetStringWithDefaultValue(
    prefServerTimeZone,
    "UTC",
  );
  bool isUtc = (serverTimeZone.toUpperCase() == "UTC");
  var parse = DateFormat("yyyy-MM-dd HH:mm:ss").parse(ourDate, isUtc);

  var detroit = isUtc ? tz.UTC : tz.getLocation(serverTimeZone);
  var now = tz.TZDateTime(
    detroit,
    parse.year,
    parse.month,
    parse.day,
    parse.hour,
    parse.minute,
    parse.second,
  );
  var convertedDate = tz.TZDateTime.from(now, tz.getLocation(localTimeZone));
  return convertedDate;
}

convertTimeToServerTime(DateTime dateTime) {
  String serverTimeZone = prefGetString(prefServerTimeZone);
  bool isUtc = (serverTimeZone.toUpperCase() == "UTC");
  final detroitTime =
      isUtc
          ? dateTime.toUtc()
          : TZDateTime.from(dateTime, getLocation(serverTimeZone));
  return DateFormat('yyyy-MM-dd HH:mm:ss').format(detroitTime);
}

Future<BitmapDescriptor> getBitmapDescriptorFromAssetBytes(
  String path,
  int width,
) async {
  final Uint8List? imageData = await getBytesFromAsset(path, width);
  return BitmapDescriptor.bytes(imageData!);
}

Future<Uint8List?> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(
    data.buffer.asUint8List(),
    targetWidth: width,
  );
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(
    format: ui.ImageByteFormat.png,
  ))?.buffer.asUint8List();
}

extension MapWithIndex<T> on List<T> {
  List<R> mapWithIndex<R>(R Function(T, int i) callback) {
    List<R> result = [];
    for (int i = 0; i < length; i++) {
      R item = callback(this[i], i);
      result.add(item);
    }
    return result;
  }
}

// openServices(BuildContext context, int serviceCategoryId) {
//   // if (serviceCategoryId == 4) {
//   //   openScreen(context, const CourierBooking());
//   // } else {
//   openScreen(context, const DSHome());
//   // }
// }

setSelectedServiceInPref(int catId, String catName, String catIcon) {
  prefSetInt(prefSelectedServiceCateId, catId);
  prefSetString(prefSelectedServiceCateName, catName);
  prefSetString(prefSelectedServiceCateIcon, catIcon);
}

bool isDirectionRTL(BuildContext context) {
  return Bidi.isRtlLanguage(Localizations.localeOf(context).languageCode);
}

Size textSize(String text, TextStyle style) {
  final TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    maxLines: 1,
    textScaler: TextScaler.noScaling,
    textDirection: ui.TextDirection.ltr,
  )..layout(minWidth: 0, maxWidth: double.infinity);
  return textPainter.size;
}

double calculateAutoscaleFontSize(
  String text,
  TextStyle style,
  double maxWidth,
) {
  final textPainter = TextPainter(textDirection: ui.TextDirection.rtl);

  var currentFontSize = style.fontSize;

  for (var i = 0; i < 500; i++) {
    // limit max iterations to 100
    final nextFontSize = currentFontSize! + 1;
    final nextTextStyle = style.copyWith(fontSize: nextFontSize);
    textPainter.text = TextSpan(text: text, style: nextTextStyle);
    textPainter.layout();
    if (textPainter.width >= maxWidth) {
      break;
    } else {
      currentFontSize = nextFontSize;
      // continue iteration
    }
  }

  return currentFontSize!;
}

bool getTwoDigitRegExp(String value) {
  return RegExp(r'^\d+\.?\d{0,2}$').hasMatch(value);
}

getValueFromStream(List<BehaviorSubject<String>> listValue) {
  bool isValid = true;
  for (var element in listValue) {
    if ((element.value).isEmpty) {
      if (!element.hasError) {
        element.sink.add("");
        if (isValid) {
          isValid = false;
        }
      }
    }
  }
  return isValid;
}

// getTimeAndDate(String date, {String format = "EEE, MMM d, yyyy"}) {
//   try {
//     var parse = DateTime.parse(date);
//     var formatDate = DateFormat(format, selectedLocale.languageCode).format(parse);
//     return formatDate;
//   } catch (e) {
//     return date;
//   }
// }

getChatDateTime(String ourDate, {String format = "yyyy-MM-dd hh:mm"}) {
  var parse = DateFormat("yyyy-MM-dd HH:mm:ss").parse(ourDate, true).toLocal();
  var formatDate = DateFormat(
    format,
    selectedLocale.languageCode,
  ).format(parse);
  return formatDate;
}

// Future<Position> determinePosition() async {
//   bool serviceEnabled;
//   LocationPermission permission;
//
//   // Test if location services are enabled.
//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   logd(tag,"service:$serviceEnabled");
//   if (!serviceEnabled) {
//     await Geolocator.openLocationSettings();
//   }
//
//   permission = await Geolocator.checkPermission();
//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) {
//       // Permissions are denied, next time you could try
//       // requesting permissions again (this is also where
//       // Android's shouldShowRequestPermissionRationale
//       // returned true. According to Android guidelines
//       // your App should show an explanatory UI now.
//       return Future.error('Location permissions are denied');
//     }
//   }
//
//   if (permission == LocationPermission.deniedForever) {
//     // Permissions are denied forever, handle appropriately.
//     return Future.error('Location permissions are permanently denied, we cannot request permissions.');
//   }
//
//   // When we reach here, permissions are granted and we can
//   // continue accessing the position of the device.
//   logd(tag,"getcurrentlocation permission Granted");
//   return await Geolocator.getCurrentPosition(forceAndroidLocationManager: true).then((value){
//     logd(tag,"getcurrentlocation successful");
//   }).catchError((e){
//     logd(tag,"getcurrentlocation error ${e.toString()}");
//   });
// }
//
// Stream<Position> determinePositionStream() {
//   LocationSettings locationSettings;
//
//   if (defaultTargetPlatform == TargetPlatform.android) {
//     locationSettings = AndroidSettings(
//       accuracy: LocationAccuracy.high,
//       forceLocationManager: true,
//       intervalDuration: const Duration(seconds: 10),
//     );
//   } else if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.macOS) {
//     locationSettings = AppleSettings(
//       accuracy: LocationAccuracy.high,
//       pauseLocationUpdatesAutomatically: true,
//     );
//   } else {
//     locationSettings = LocationSettings(
//       accuracy: LocationAccuracy.high,
//       distanceFilter: 30,
//     );
//   }
//
//   return Geolocator.getPositionStream(locationSettings: locationSettings);
// }

String getArrivedImage() {
  return "assets/images/dialog_courier_delivery_person_arrived_img.webp";
}

String getArrivedTitleMsg({bool? isTitle}) {
  return isTitle!
      ? languages.courierDriverArrived
      : languages.courierDriverArrivedMsg(languages.appName);
}

String getCancelTitleMsg({bool? isTitle}) {
  return isTitle! ? languages.cancelRide : languages.cancelRideMsg;
}

String getRideStartedImg() {
  return "assets/images/dialog_courier_started_img.webp";
}

String getRideStartedTitleMsg({bool? isTitle}) {
  return isTitle!
      ? languages.courierDeliveryStarted
      : languages.courierDeliveryStartedMsg(languages.appName);
}

String getRideFinish() {
  return "assets/images/dialog_courier_delivery_successful_finished_img.png";
}

String getRideFinishTitleMsg({bool? isTitle}) {
  return isTitle!
      ? languages.courierDeliveryFinish
      : languages.courierDeliveryFinishMsg(languages.appName);
}

String getRideSuccessFinish() {
  return "assets/images/dialog_courier_delivery_successful_finished_img.png";
}

String getRideSuccessTitleMsg({bool? isTitle}) {
  return isTitle!
      ? languages.courierRideSuccessfullyFinished
      : languages.courierRideSuccessfullyFinishedMsg;
}

TextStyle bodyText({
  FontWeight? fontWeight,
  double? fontSize,
  Color? textColor,
}) {
  return commonTextStyle(
    fontWeight: fontWeight,
    fontSize: fontSize,
    textColor: textColor,
  );
}

TextStyle headerText({
  FontWeight? fontWeight,
  double? fontSize,
  Color? textColor,
}) {
  return commonTextStyle(
    fontWeight: fontWeight ?? FontWeight.w600,
    fontSize: fontSize ?? textSizeBig,
    textColor: textColor,
  );
}

TextStyle toolbarStyle({
  FontWeight? fontWeight,
  double? fontSize,
  Color? textColor,
}) {
  return commonTextStyle(
    fontWeight: fontWeight ?? FontWeight.w600,
    fontSize: fontSize ?? textSizeLarge,
    textColor: textColor,
  );
}

TextStyle commonTextStyle({
  FontWeight? fontWeight,
  double? fontSize,
  Color? textColor,
}) {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: textColor ?? colorTextCommon,
      fontSize: deviceAverageSize * (fontSize ?? textSizeRegular),
      decoration: TextDecoration.none,
    ),
    fontWeight: fontWeight ?? FontWeight.normal,
  );
}

Color lighten(Color c, [int percent = 30]) {
  assert(1 <= percent && percent <= 100);
  var p = percent / 100;
  return Color.fromARGB(
    c.alpha,
    c.red + ((255 - c.red) * p).round(),
    c.green + ((255 - c.green) * p).round(),
    c.blue + ((255 - c.blue) * p).round(),
  );
}

setCatDetailIntoPref(int catId, String catName, String catIcon) {
  prefSetInt(prefSelectedServiceCateId, catId);
  prefSetString(prefSelectedServiceCateName, catName);
  prefSetString(prefSelectedServiceCateIcon, catIcon);
}

setChangedLanguage(
  BuildContext context,
  String languageCode,
  State state, {
  Function()? nextAction,
}) {
  changeLanguage(context, languageCode, state).then((value) {
    selectedLocale = getLocale();
    AppLocalizations.delegate.load(selectedLocale).then((value) {
      languages = value;
      if (nextAction != null) nextAction();
    });
  });
}

Future<String> getStringAddress(double latitude, double longitude) async {
  final coordinates = LatLng(latitude, longitude);
  try {
    List<Placemark> placeMark = await placemarkFromCoordinates(
      latitude,
      longitude,
    );
    return '${placeMark.first.name!.isNotEmpty ? '${placeMark.first.name!}, ' : ''}${placeMark.first.thoroughfare!.isNotEmpty ? '${placeMark.first.thoroughfare!}, ' : ''}${placeMark.first.subLocality!.isNotEmpty ? '${placeMark.first.subLocality!}, ' : ''}${placeMark.first.locality!.isNotEmpty ? '${placeMark.first.locality!}, ' : ''}${placeMark.first.subAdministrativeArea!.isNotEmpty ? '${placeMark.first.subAdministrativeArea!}, ' : ''}${placeMark.first.postalCode!.isNotEmpty ? '${placeMark.first.postalCode!}, ' : ''}${placeMark.first.administrativeArea!.isNotEmpty ? placeMark.first.administrativeArea : ''}';
  } catch (e) {
    List<Placemark> placeMark =
        (await GeoCodingApiCall().findAddressesFromCoordinates(coordinates)) ??
        [];
    return '${placeMark.first.name!.isNotEmpty ? '${placeMark.first.name!}, ' : ''}${placeMark.first.thoroughfare!.isNotEmpty ? '${placeMark.first.thoroughfare!}, ' : ''}${placeMark.first.subLocality!.isNotEmpty ? '${placeMark.first.subLocality!}, ' : ''}${placeMark.first.locality!.isNotEmpty ? '${placeMark.first.locality!}, ' : ''}${placeMark.first.subAdministrativeArea!.isNotEmpty ? '${placeMark.first.subAdministrativeArea!}, ' : ''}${placeMark.first.postalCode!.isNotEmpty ? '${placeMark.first.postalCode!}, ' : ''}${placeMark.first.administrativeArea!.isNotEmpty ? placeMark.first.administrativeArea : ''}';
  }
}

String timeAgo(DateTime d) {
  Duration diff = DateTime.now().difference(d);
  if (diff.inDays > 365) {
    return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? languages.year : languages.years} ${languages.ago}";
  }
  if (diff.inDays > 30) {
    return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? languages.month : languages.months} ${languages.ago}";
  }
  if (diff.inDays > 7) {
    return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? languages.week : languages.weeks} ${languages.ago}";
  }
  if (diff.inDays > 0) {
    return "${diff.inDays} ${diff.inDays == 1 ? languages.day : languages.days} ${languages.ago}";
  }
  if (diff.inHours > 0) {
    return "${diff.inHours} ${diff.inHours == 1 ? languages.hour : languages.hours} ${languages.ago}";
  }
  if (diff.inMinutes > 0) {
    return "${diff.inMinutes} ${diff.inMinutes == 1 ? languages.minute : languages.minutes} ${languages.ago}";
  }
  if (diff.inSeconds >= 3) {
    return '${diff.inSeconds} ${languages.seconds} ${languages.ago}';
  }
  return languages.justNow;
}

logd(String tag, String message) {
  debugPrint("$tag $message");
}

initConfig() async {
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // pushNotificationService = PushNotificationService();
  // // Set the background messaging handler early on, as a named top-level function
  // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  // await pushNotificationService.initialise();
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   badge: true,
  //   alert: true,
  //   sound: true,
  // );
  // pushNotificationService.handleNotification();
  return true;
}

String getChatWithDefaultProfile(int userType) {
  switch (userType) {
    case chatWithTypeStore:
      return "assets/images/avatar_store.png";
    case chatWithTypeDriver:
      return "assets/images/avatar_driver.png";
    case chatWithTypeUser:
      return "assets/images/avatar_user.png";
    default:
      return "assets/images/avatar_admin.png";
  }
}

String getChatWithService(int userType) {
  switch (userType) {
    case chatWithTypeStore:
      return languages.store;
    case chatWithTypeDriver:
      return languages.driver;
    default:
      return "";
  }
}

int getAddOnsType({int? categoryId}) {
  categoryId = categoryId ?? prefGetInt(prefSelectedServiceCateId);
  switch (categoryId) {
    case 2:
    case 5:
      return typeToppingOption;
    default:
      return typeSizeColor;
  }
}

String capitalize(String s) {
  if (s.isEmpty) return s;
  return s[0].toUpperCase() + s.substring(1);
}
