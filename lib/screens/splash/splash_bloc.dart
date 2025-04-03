import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:hare_hotel/dialogs/simple_dialog_util.dart';

import '../../blocs/bloc.dart';
import '../../utils/utils.dart';
// import '../homeMainV1/home_main_v1.dart';
import '../login/login.dart';
import 'splash.dart';
import 'splash_dl.dart';
import 'splash_repo.dart';

class SplashBloc extends Bloc {
  String tag = "SplashBloc>>>";
  BuildContext context;
  Timer? _timer;

  State<Splash> state;

  final SplashRepo _splashRepo = SplashRepo();

  SplashBloc(this.context, this.state) {
    checkAppVersionApi();
  }

  final _subject = BehaviorSubject<ApiResponse<AppVersionCheckPojo>>();

  BehaviorSubject<ApiResponse<AppVersionCheckPojo>> get subject => _subject;

  splashAction() {
    // FirebaseMessaging.instance.getToken().then((token) {
    //   prefSetString(prefDeviceToken, token!);
    //   Intercom.instance.sendTokenToIntercom(token);
    //   logd(tag, "Token : $token");
    // });

    if (isLoggedIn()) {
      callRunningServiceApi();
      /*if (isUserLoginFromSocial()) {
        callRunningServiceApi();
      } else {
        if (!isUserVerified()) {
          openScreenWithResult(context, const OtpVerify());
        } else {
          callRunningServiceApi();
        }
      }*/
    } else {
      _timer = Timer(const Duration(milliseconds: 3000), () {
        // openScreenWithClearPrevious(
        //   context,
        //   const SelectLanguageAndCurrency(isFromHome: false),
        // );
      });
    }
  }

  checkAppVersionApi() async {
    List<ConnectivityResult> connectivityResults =
        await (Connectivity().checkConnectivity());
    if (connectivityResults.any((item) => item != ConnectivityResult.none)) {
      _subject.sink.add(ApiResponse.loading());
      try {
        var response = AppVersionCheckPojo.fromJson(
          await _splashRepo.appVersionCheckApi(),
        );

        if (!state.mounted) return;
        String message = getApiMsg(
          context,
          response.messageCode,
          response.message,
        );
        if (isApiStatus(context, response.status, message, true)) {
          _subject.sink.add(ApiResponse.completed(response));
          openForceFullyUpdateDialog(
            response.appVersion,
            response.isForcefullyUpdate,
          );
        } else {
          _subject.sink.add(ApiResponse.error(message));
        }
      } catch (e) {
        if (!state.mounted) return;
        openSimpleSnackbar(e.toString());
        _subject.sink.add(ApiResponse.error(e.toString()));
      }
    } else {
      if (!state.mounted) return;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialogUtil(
            title: languages.connection,
            onPositivePress: () async {
              List<ConnectivityResult> connectivityResults =
                  await (Connectivity().checkConnectivity());
              if (connectivityResults.any(
                (item) => item != ConnectivityResult.none,
              )) {
                if (!state.mounted) return;
                Navigator.pop(context);
                await initConfig();
                checkAppVersionApi();
              }
            },
            message: languages.connectionMsg,
            positiveButtonTxt: languages.retry,
          );
        },
        barrierDismissible: false,
      );
    }
  }

  callRunningServiceApi() async {
    _timer = Timer(const Duration(milliseconds: 3000), () {
      // openScreenWithClearPrevious(
      //   context,
      //   const HomeMainV1(isShowDialog: true),
      // );
    });
    // List<ConnectivityResult> connectivityResults = await (Connectivity().checkConnectivity());
    // if (connectivityResults.any((item) => item != ConnectivityResult.none)) {
    //   try {
    //     var response = GetRunningServicePojo.fromJson(await _splashRepo.getRunningServiceApi());
    //     if (response != null) {
    //       manageRunningServiceResponse(response);
    //     }
    //   } catch (e) {
    //     openSimpleSnackbar(context!, e.toString());
    //   }
    // } else {
    //   openSimpleSnackbar(context!, languages.internetConnLostTitle);
    // }
  }

  manageRunningServiceResponse(GetRunningServicePojo response) {
    int status = response.status;
    if (status == 2) {
      openScreenWithClearPrevious(context, const Login());
    } else if (status == 0) {
      // openScreenWithClearPrevious(
      //   context,
      //   const HomeMainV1(isShowDialog: true),
      // );
    } else {
      String message = getApiMsg(
        context,
        response.messageCode,
        response.message,
      );
      if (isApiStatus(context, status, message, true)) {
        // if (response.orderStatus >= 6) {
        //   openScreenWithClearPrevious(context!, RideInvoice(rideId: response.orderId, serviceCateId: response.serviceCatId));
        // } else {
        //   openScreenWithClearPrevious(context!,
        //       RunningRide(orderId: response.orderId, orderStatus: response.orderStatus, serviceCateId: response.serviceCatId));
        // }
      }
    }
  }

  openHomeOrLoginActivity() {
    if (isLoggedIn()) {
      // if (isEmailOrNumNull()) {
      //   openScreenWithClearPrevious(context!, RequiredInformation());
      // } else {
      if (isUserVerified()) {
        // openScreenWithClearPrevious(
        //   context,
        //   const HomeMainV1(isShowDialog: true),
        // );
      } else {
        openScreenWithClearPrevious(context, const Login());
      }
      // }
    } else {
      // openScreenWithClearPrevious(
      //   context,
      //   const SelectLanguageAndCurrency(isFromHome: false),
      // );
    }
  }

  openForceFullyUpdateDialog(String versionName, int forcefullyUpdate) async {
    String currentVersion = "0", packageName = "";
    if (!kIsWeb) {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      currentVersion = packageInfo.version;
      packageName = packageInfo.packageName;
    }
    logd(tag, "${currentVersion.compareTo(versionName)}");
    if (!state.mounted) return;
    if (currentVersion.compareTo(versionName) == -1 && forcefullyUpdate == 1) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialogUtil(
            title: languages.newUpdateAvailable,
            message: languages.newUpdateMsg,
            positiveButtonTxt: languages.update,
            onPositivePress: () {
              String url = "";
              if (Platform.isAndroid) {
                url =
                    "https://play.google.com/store/apps/details?id=$packageName";
              } else {
                url = "https://apps.apple.com/app/id$appleId";
              }
              openUrlInStore(url);
            },
            onNegativePress: () {
              Navigator.pop(context, true);
            },
          );
        },
      ).then((value) {
        openForceFullyUpdateDialog(versionName, forcefullyUpdate);
      });
    } else {
      splashAction();
    }
  }

  @override
  void dispose() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
    }
    _subject.close();
  }
}
