import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../commonView/common_view.dart';
import '../../utils/utils.dart';
import 'splash_bloc.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  SplashBloc? _bloc;

  @override
  void didChangeDependencies() {
    if (mounted) {
      _bloc = SplashBloc(context, this);
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _bloc!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: colorPrimary,
            // image: DecorationImage(image: AssetImage("assets/images/splash_bg.png"), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.center,
                child: Image.asset(
                  'assets/images/splash_logo_light.png',
                  width: deviceWidth * 0.4,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/gifs/splash_loading.gif",
                      color: colorWhite,
                      height: deviceHeight * 0.05,
                      width: deviceWidth * 0.09,
                    ),
                    SizedBox(height: deviceHeight * 0.01),
                    appVersionName(textColor: colorWhite),
                    SizedBox(height: deviceHeight * 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
