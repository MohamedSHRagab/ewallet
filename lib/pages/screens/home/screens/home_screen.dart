import 'package:e_wallet_mobile_app/pages/screens/home/screens/requests_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:e_wallet_mobile_app/models/user_model.dart';
import 'package:e_wallet_mobile_app/pages/screens/home/widgets/build_home_user_item.dart';
import 'package:e_wallet_mobile_app/styles/Iconly-Broken_icons.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:e_wallet_mobile_app/styles/size_config.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: k_blue,
                  width: SizeConfig.screenWidth,
                  height: 170,
                ),
                Container(
                  height: 170,
                  width: SizeConfig.screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => Get.to(() => ProfileScreen()),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Container(height:55,child: Lottie.asset('assets/images/profile.json')),
                                  SizedBox(width: 50),
                                ],
                              ),
                            ),

                            InkWell(
                              onTap: () => Get.to(() => RequestsScreen()),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Container(
                                    child: Icon(
                                      Iconly_Broken.Notification,
                                      color: Colors.white,
                                      size: 33,
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  Container(
                                    width: 11,
                                    height: 11,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[900],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () => Get.to(() => RequestsScreen()),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Container(
                                    child: Icon(
                                      Iconly_Broken.Chat,
                                      color: Colors.blue,
                                      size: 33,
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                ],
                              ),
                            ),
                            SizedBox(width: 30),
                            Text(
                              mainUser.name,
                              style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
        ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "  ${mainUser.totalAmount}  ",
                              style: TextStyle(color: Colors.yellow,fontSize: 24,fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ": ???????????? ????????????",
                              style: TextStyle(color: Colors.yellow,fontSize: 22,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "  ${mainUser.totalAmount}  ",
                              style: TextStyle(color: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ": ???????????? ??????????????",
                              style: TextStyle(color: Colors.yellow,fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "  ${mainUser.totalAmount}  ",
                              style: TextStyle(color: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ": ???????? ??????????",
                              style: TextStyle(color: Colors.yellow,fontSize: 18,fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "?????? ??????????????????",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      "?????? ???????? ",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: usersList.length,
              itemBuilder: (BuildContext context, int index) {
                return BuildHomeUserItem(user: usersList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
