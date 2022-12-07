import 'package:e_wallet_mobile_app/pages/screens/profile/widgets/build_setting_item.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: k_black),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "الاعدادات",
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20),
              BuildSettingItem(
                title: "اللغة",
                subTitle: "تغيير اللغة ",
                imagePath: "assets/images/language_icon.png",
                onTap: () {},
              ),
              SizedBox(height: 25),
              BuildSettingItem(
                title: "تسجيل خروج",
                subTitle: "تسجيل الخروج من حسابك الحالي ",
                imagePath: "assets/images/logout_icon.png",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
