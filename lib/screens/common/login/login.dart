import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:hare_hotel/screens/common/homeMainV1/home_main_v1.dart';
import '../../../commonView/common_view.dart';
import '../../../commonView/custom_text_field.dart';
// import '../../../commonView/social_login.dart';
// import '../../../dialogs/forgotPasswordDialog/forgot_password_dialog.dart';
import '../../../networking/api_base_helper.dart';
import '../../../utils/utils.dart';
// import '../signUp/sign_up.dart';
import 'login_bloc.dart';
import 'login_dl.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  late LoginBloc _bloc;
  bool loginWithEmail = false;

  var labelStyle = bodyText(
    fontSize: textSizeMediumBig,
    fontWeight: FontWeight.w500,
    textColor: colorMainLightGray,
  );
  var textStyle = bodyText(
    fontSize: textSizeMediumBig,
    fontWeight: FontWeight.w500,
  );
  var formDivider = deviceHeight * 0.015;

  @override
  void didChangeDependencies() {
    _bloc = LoginBloc(context, this);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildLogin(context));
  }

  _buildLogin(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: deviceHeight * 0.05),
        // Container(
        //   width: double.infinity,
        //   padding: EdgeInsets.symmetric(vertical: deviceAverageSize * 0.030),
        //   color: colorLoginBg,
        //           height: deviceHeight * 0.2,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Flexible(
        //         child: Image.asset(
        //           "assets/images/splash_logo.png",
        //           fit: BoxFit.contain,
        //           height: deviceHeight * 0.15,
        //           width: double.infinity,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Expanded(
          flex: 8,
          child: Stack(
            children: [
              Container(color: colorLoginBg),
              Container(
                width: double.infinity,
                height: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.vertical(
                    top: Radius.circular(30),
                  ),
                  color: colorWhite,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: deviceHeight * 0.025,
                      vertical: deviceHeight * 0.025,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          languages.startedWithHare,
                          style: bodyText(
                            textColor: colorBlack,
                            fontWeight: FontWeight.w600,
                            fontSize: 0.039,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          languages.choosesettingaccount,
                          style: const TextStyle(
                            color: colorMainLightGray,
                            fontSize: 14,
                            height: 0.8,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: formDivider * 2),
                        if (loginWithEmail)
                          Column(
                            children: [
                              Form(
                                key: _bloc.formKey,
                                child: Column(
                                  children: [
                                    TextFormFieldCustom(
                                      decoration: const InputDecoration(
                                        labelText: "Email or Number*",
                                      ),
                                      useLabelWithBorder: true,
                                      setError: true,
                                      keyboardType: TextInputType.emailAddress,
                                      style: textStyle,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      controller: _bloc.emailController,
                                      validator: (value) {
                                        _bloc.buttonHide();
                                        return validateEmailOrNumber(value);
                                      },
                                    ),
                                    SizedBox(height: deviceHeight * 0.025),
                                    TextFormFieldCustom(
                                      decoration: InputDecoration(
                                        labelText: "${languages.password}*",
                                      ),
                                      useLabelWithBorder: true,
                                      style: textStyle,
                                      controller: _bloc.passController,
                                      textInputAction: TextInputAction.done,
                                      setError: true,
                                      setPassword: true,
                                      validator: (value) {
                                        _bloc.buttonHide();
                                        if (value.trim().isEmpty) {
                                          return languages.enterPass;
                                        } else {
                                          return "";
                                        }
                                      },
                                    ),
                                    SizedBox(height: formDivider * 2),
                                    StreamBuilder<bool>(
                                      stream: _bloc.submitValid,
                                      builder: (context, snapshot) {
                                        bool isEnable = snapshot.data ?? false;
                                        return StreamBuilder<
                                          ApiResponse<LoginPojo>
                                        >(
                                          stream: _bloc.subject,
                                          builder: (context, snapLoading) {
                                            var isLoading =
                                                snapLoading.hasData &&
                                                snapLoading.data?.status ==
                                                    Status.loading;
                                            return CustomRoundedButton(
                                              context,
                                              languages.login,
                                              (isLoading || !isEnable)
                                                  ? null
                                                  : () {
                                                    _bloc.manageEmailLogin(
                                                      loginTypeEmail,
                                                    );
                                                  },
                                              setProgress: isLoading,
                                              fontWeight: FontWeight.bold,
                                              textSize: textSizeLarge,
                                              minHeight: commonBtnHeight,
                                              minWidth: double.infinity,
                                            );
                                            /*});*/
                                          },
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: deviceHeight * 0.02,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: GestureDetector(
                                          onTap:
                                              () => showDialog(
                                                context: context,
                                                barrierDismissible: false,
                                                builder: (
                                                  BuildContext context,
                                                ) {
                                                  return const ForgotPasswordDialog();
                                                },
                                              ),
                                          child: Text(
                                            languages.forgotPass,
                                            style: bodyText(
                                              fontWeight: FontWeight.w600,
                                            ).copyWith(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: deviceHeight * 0.02,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Divider(
                                              color: colorMainLightGray,
                                              thickness: deviceHeight * 0.0018,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: deviceWidth * 0.03,
                                            ),
                                            child: Text(
                                              "${languages.or.toUpperCase()} ",
                                              style: bodyText(
                                                textColor: colorMainLightGray,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 0.020,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Divider(
                                              color: colorMainLightGray,
                                              thickness: deviceHeight * 0.0018,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        else
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 10,
                            ),
                            child: CustomRoundedButton(
                              context,
                              languages.loginWithEmail,
                              () => setState(() {
                                loginWithEmail = true;
                              }),
                              fontWeight: FontWeight.bold,
                              textSize: textSizeLarge,
                              minHeight: commonBtnHeight,
                              minWidth: double.infinity,
                              roundedRectangleBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        SocialLogin(
                          function: ({
                            String? email,
                            String? name,
                            String? id,
                            String? loginType,
                          }) {
                            _bloc.login(
                              loginType!,
                              email ?? "",
                              name ?? "",
                              id ?? "",
                            );
                          },
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: deviceHeight * 0.02,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: languages.dontHaveAnAcc,
                              style: bodyText(fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: " ${languages.registerNow}",
                                  style: bodyText(
                                    fontSize: textSizeBig,
                                    fontWeight: FontWeight.w600,
                                    textColor: colorPrimary,
                                  ),
                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pop(context);
                                          openBottomModalSheet(
                                            context,
                                            const SignUp(),
                                          );
                                        },
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (!loginWithEmail)
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: deviceHeight * 0.02,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: colorMainLightGray,
                                        thickness: deviceHeight * 0.0018,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: deviceWidth * 0.03,
                                      ),
                                      child: Text(
                                        "${languages.or.toUpperCase()} ",
                                        style: bodyText(
                                          textColor: colorMainLightGray,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 0.02,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: colorMainLightGray,
                                        thickness: deviceHeight * 0.0018,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed:
                                        () => openScreenWithResult(
                                          context,
                                          const HomeMainV1(),
                                        ),
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Color(0xFFF0F0F0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Text(
                                      'Explore Without Login',
                                      style: TextStyle(
                                        color: colorBlack,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
