import 'package:e_wallet_mobile_app/pages/screens/auth/screens/login_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/auth/screens/register_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/auth/widgets/curve_painter.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_elevated_button.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:e_wallet_mobile_app/styles/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_wallet_mobile_app/pages/screens/auth/screens/forget_password_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/e-wallet_layout/e-wallet_layout_screen.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_textField.dart';

class MainAuthScreen extends StatelessWidget {
  const MainAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 0.95,
              child: Stack(
                children: [
                  Container(
                    width: SizeConfig.screenWidth,
                    height: double.infinity-50,
                    child: CustomPaint(
                      foregroundPainter: CurvePainter(
                        rightHeight: 0.68,
                        leftHeight: 0.7,
                        color: k_grey,
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: double.infinity-50,
                    child: CustomPaint(
                      foregroundPainter: CurvePainter(
                        rightHeight: 0.68,
                        leftHeight: 0.7,
                        color: k_blue,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Icon.png"),
                        SizedBox(height: 10),
                        Text(
                          "MasterTab",
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 30),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "The Best Way to Manage your Activities ",
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 14),
                        ),
                        SizedBox(height: 50),
                        Container(
                            child: Opacity(
                              opacity: 1,
                              child: Card(

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30),)),
                                color: Colors.white,

                          elevation: 10,
                          margin: EdgeInsets.all(20),
                          child: Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  CustomTextField(
                                    title: "Email",
                                    hint: "Enter your email",
                                    textEditingController: _emailController,
                                  ),
                                  SizedBox(height: 30),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomTextField(
                                        title: "Password",
                                        hint: "Enter your password",
                                        textEditingController:
                                            _passwordController,
                                      ),
                                      SizedBox(height: 5),
                                      GestureDetector(
                                        onTap: () =>
                                            Get.to(() => ForgetPasswordScreen()),
                                        child: Text(
                                          "Forget password?",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Container(
                                    width: SizeConfig.screenWidth * 0.75,
                                    child: CustomElevatedButton(
                                      label: "Login",
                                      color: k_blue,
                                      onPressed: () =>
                                          Get.off(() => E_WalletLayoutScreen()),
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ),
                            ))
                      ],
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
