import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:translator/translator.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:redux/redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

import 'l10n/app_localizations.dart';
import 'utils/get_location_utils.dart';

import 'redux/store.dart';
import 'utils/utils.dart';
// import 'screens/common/splash/splash.dart';
import 'screens/common/desktop/desktop.dart';

GetLocationUtils getLocationUtils = GetLocationUtils();
final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
final navigatorKey = GlobalKey<NavigatorState>();
late Locale selectedLocale;
late String localTimeZone;
final translator = GoogleTranslator();
late AppLocalizations languages;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  localTimeZone = await FlutterTimezone.getLocalTimezone();
  await initSharedPreferences();
  List<ConnectivityResult> connectivityResults =
      await (Connectivity().checkConnectivity());
  if (connectivityResults.any((item) => item != ConnectivityResult.none)) {}
  tz.initializeTimeZones();
  await initStore();
  store = getStore();

  runApp(DevicePreview(enabled: true, builder: (context) => MyApp(store)));
}

class MyApp extends StatefulWidget {
  final Store<AppState> store;

  const MyApp(this.store, {super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<MyAppState>();
    state?.setLocale(newLocale);
  }

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  //For Multi Language
  void setLocale(Locale locale) {
    setState(() {
      selectedLocale = locale;
    });
  }

  @override
  void didChangeDependencies() async {
    selectedLocale = getLocale();
    // List<ConnectivityResult> connectivityResults =
    //     await (Connectivity().checkConnectivity());
    // if (connectivityResults.any((item) => item != ConnectivityResult.none)) {
    //   pushNotificationService.handleNotification();
    // }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          navigatorKey: navigatorKey,
          scaffoldMessengerKey: rootScaffoldMessengerKey,
          theme: ThemeData(
            useMaterial3: false,
            primaryColor: colorPrimary,
            colorScheme: ThemeData().colorScheme.copyWith(
              primary: colorPrimary,
              secondary: colorPrimary,
            ),
            unselectedWidgetColor: colorPrimary,
            textSelectionTheme: const TextSelectionThemeData(
              cursorColor: colorPrimary,
            ),
            fontFamily: GoogleFonts.nunito().fontFamily,
            scaffoldBackgroundColor: colorWhite,
            appBarTheme: const AppBarTheme(
              centerTitle: false,
              titleSpacing: 0,
              color: colorWhite,
              elevation: 3,
              shadowColor: Color(0x33000000),
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              iconTheme: IconThemeData(color: colorTextCommon),
            ),
          ),
          builder: (context, child) {
            deviceWidth = MediaQuery.of(context).size.width;
            deviceHeight = MediaQuery.of(context).size.height;
            deviceAverageSize = (deviceWidth + deviceHeight) / 2;
            textScalerOf = MediaQuery.textScalerOf(context);
            // if (languages == null)
            if (AppLocalizations.of(context) != null) {
              languages = AppLocalizations.of(context)!;
            }

            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.linear(1.0)),
              child: ScrollConfiguration(behavior: MyBehavior(), child: child!),
            );
          },
          debugShowCheckedModeBanner: false,
          locale: selectedLocale,
          home: Desktop(),
          onGenerateRoute: (settings) {
            return null;
          },
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
