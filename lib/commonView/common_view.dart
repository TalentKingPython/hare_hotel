import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../utils/utils.dart';

class CustomRoundedButton extends StatelessWidget {
  final BuildContext context;
  final String text;
  final GestureTapCallback? onPressed;
  final Color? bgColor;
  final Color? textColor;
  final Color? progressColor;
  final Color? borderColor;
  final Widget? icon;
  final Widget? widget;
  final double? textSize;
  final double? progressSize;
  final double? progressStrokeWidth;
  final double? elevation;
  final double? iconTextSpacing;
  final double? borderWidth;
  final bool setBorder;
  final bool setProgress;
  final int maxLine;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final RoundedRectangleBorder? roundedRectangleBorder;
  final EdgeInsetsDirectional margin;
  final EdgeInsetsDirectional padding;
  final MaterialTapTargetSize materialTapTargetSize;
  final double minHeight;
  final double minWidth;

  const CustomRoundedButton(
    this.context,
    this.text,
    this.onPressed, {
    this.bgColor,
    this.textColor,
    this.progressColor,
    this.borderColor,
    this.icon,
    this.widget,
    this.textSize,
    this.progressSize,
    this.progressStrokeWidth,
    this.elevation,
    this.iconTextSpacing,
    this.borderWidth,
    this.setBorder = false,
    this.setProgress = false,
    this.maxLine = 1,
    this.textAlign = TextAlign.start,
    this.fontWeight = FontWeight.normal,
    this.roundedRectangleBorder,
    this.margin = EdgeInsetsDirectional.zero,
    this.padding = EdgeInsetsDirectional.zero,
    this.materialTapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.minHeight = 0.0,
    this.minWidth = 0.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainBgColor = bgColor ?? colorPrimary;
    mainBgColor = onPressed == null ? lighten(mainBgColor) : mainBgColor;

    return Container(
      margin: margin,
      child: CustomBorderButton(
        onPressed: setProgress ? null : onPressed,
        border:
            roundedRectangleBorder ??
            RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                topStart: topRightRadius,
                topEnd: topLeftRadius,
                bottomStart: bottomRightRadius,
                bottomEnd: bottomLeftRadius,
              ),
            ),
        borderColor: borderColor ?? mainBgColor,
        bgColor: setBorder ? null : mainBgColor,
        icon: icon,
        minHeight: minHeight,
        minWidth: minWidth,
        setBorder: setBorder,
        tapTargetSize: materialTapTargetSize,
        padding: padding,
        elevation: elevation,
        borderWidth: borderWidth,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            setProgress
                ? Flexible(
                  child: SizedBox(
                    width: deviceHeight * (progressSize ?? cpiSizeSmall),
                    height: deviceHeight * (progressSize ?? cpiSizeSmall),
                    child: CircularProgressIndicator(
                      strokeWidth:
                          deviceAverageSize *
                          (progressStrokeWidth ?? cpiStrokeWidthSmall),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        progressColor ??
                            (setBorder ? bgColor ?? colorPrimary : colorWhite),
                      ),
                    ),
                  ),
                )
                : Flexible(
                  child:
                      widget ??
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (icon != null)
                            Flexible(
                              child: Container(
                                margin: EdgeInsetsDirectional.only(
                                  end: deviceWidth * 0.02,
                                ),
                                child: icon,
                              ),
                            ),
                          Flexible(
                            child: Text(
                              text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: maxLine,
                              textAlign: textAlign,
                              style: bodyText(
                                fontSize: textSize ?? textSizeRegular,
                                fontWeight: fontWeight,
                                textColor:
                                    textColor ??
                                    (setBorder
                                        ? bgColor ?? colorPrimary
                                        : colorWhite),
                              ),
                            ),
                          ),
                        ],
                      ),
                ),
          ],
        ),
      ),
    );
  }
}

class CustomBorderButton extends StatelessWidget {
  final GestureTapCallback? onPressed;
  final Widget? child;
  final Widget? icon;
  final Color? bgColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? minHeight;
  final double? minWidth;
  final double? elevation;
  final EdgeInsetsDirectional? padding;
  final bool? setBorder;
  final MaterialTapTargetSize? tapTargetSize;
  final RoundedRectangleBorder? border;

  const CustomBorderButton({
    super.key,
    this.onPressed,
    this.child,
    this.bgColor,
    this.borderColor,
    this.borderWidth,
    this.border,
    this.icon,
    this.minHeight = 0,
    this.setBorder = false,
    this.padding = EdgeInsetsDirectional.zero,
    this.minWidth = 0,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    var borderRadiusDirectional = BorderRadiusDirectional.only(
      topStart: topRightRadius,
      topEnd: topLeftRadius,
      bottomStart: bottomRightRadius,
      bottomEnd: bottomLeftRadius,
    );
    return !setBorder!
        ? ElevatedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: bgColor ?? colorPrimary,
            tapTargetSize: tapTargetSize,
            elevation: elevation,
            padding: padding,
            minimumSize: Size(
              deviceWidth * minWidth!,
              deviceHeight * minHeight!,
            ),
            shape:
                border ??
                RoundedRectangleBorder(borderRadius: borderRadiusDirectional),
          ),
          onPressed:
              onPressed != null
                  ? () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    onPressed?.call();
                  }
                  : null,
          child: child,
        )
        : OutlinedButton(
          style: OutlinedButton.styleFrom(
            tapTargetSize: tapTargetSize,
            minimumSize: Size(
              deviceWidth * minWidth!,
              deviceHeight * minHeight!,
            ),
            padding: padding,
            foregroundColor: bgColor ?? colorPrimary,
            shape:
                border ??
                RoundedRectangleBorder(borderRadius: borderRadiusDirectional),
            side: BorderSide(
              color: borderColor ?? colorPrimary,
              width: deviceAverageSize * (borderWidth ?? 0.002),
            ),
          ),
          onPressed:
              onPressed != null
                  ? () {
                    FocusManager.instance.primaryFocus!.unfocus();
                    onPressed?.call();
                  }
                  : null,
          child: child!,
        );
  }
}

class Error extends StatelessWidget {
  final String? errorMessage;

  final Function()? onRetryPressed;

  const Error({super.key, this.errorMessage, this.onRetryPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (errorMessage != null)
            Text(
              errorMessage!,
              textAlign: TextAlign.center,
              style: bodyText(textColor: Colors.red, fontSize: 18),
            ),
          if (errorMessage != null) const SizedBox(height: 8),
          IconButton(
            onPressed: onRetryPressed,
            icon: const Icon(Icons.refresh, color: Colors.red),
          ),
        ],
      ),
    );
  }
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: deviceWidth * 0.005),
    height: isActive ? deviceHeight * 0.008 : deviceHeight * 0.006,
    width: isActive ? deviceHeight * 0.008 : deviceHeight * 0.006,
    decoration: BoxDecoration(
      borderRadius: BorderRadiusDirectional.all(
        Radius.circular(deviceAverageSize * 0.1),
      ),
      color: isActive ? colorPrimaryDark : colorPrimary.withAlpha(25),
    ),
  );
}

Widget appVersionName({Color? textColor}) {
  return FutureBuilder(
    future: PackageInfo.fromPlatform(),
    builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
      return Text(
        (snapshot.data != null && snapshot.data?.version != null)
            ? "V${snapshot.data?.version}"
            : "",
        textAlign: TextAlign.center,
        maxLines: 1,
        style: bodyText(
          textColor: textColor ?? colorWhite,
          fontSize: textSizeSmall,
          fontWeight: FontWeight.w600,
        ),
      );
    },
  );
}
