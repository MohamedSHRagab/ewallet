import 'package:e_wallet_mobile_app/models/user_model.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/contact_item.dart';

class ContactsScreen extends StatelessWidget {
  ContactsScreen({Key? key}) : super(key: key);
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text(
                "العملاء",
                style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              // backgroundColor: Colors.blue,
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/search_icon.png",
                    color: k_blue,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: k_blue),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        hintText: "اسم العميل - رقم الموبايل",
                        border: InputBorder.none,
                        prefixIcon: Image.asset("assets/images/search_icon.png", color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: usersList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20);
                },
                itemBuilder: (BuildContext context, int index) {
                  return BuildContactItem(user: usersList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
