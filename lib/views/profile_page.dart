


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_ui/colors.dart';
import 'package:restaurant_ui/widgets/appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight - kBottomNavigationBarHeight;
    final w = MediaQuery.of(context).size.width;

    print(h);

    return Scaffold(
      appBar: MyAppBar(title: "Profile"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: h*0.25,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: red,
                      ),
                      child: Icon(Icons.person, color: Colors.white, size: 40,),
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 6),
                      child: Text("Nikel Maharjan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
                  Text("nikelmaharjan@gmail.com", style: TextStyle(fontSize: 14, color: black),)
                ],
              ),
            ),
          ),

           _buildDivider(),

          _buildSections(header: "ACCOUNT", title1: "Nikel", title2: "Saved Address", title3: "Notification", height: h),

          _buildDivider(),


          _buildSections(header: "OFFERS", title1: "Promo", title2: "Get Discounts", height: h),

          _buildDivider(),

          _buildSections(header: "SETTING", title1: "Theme", title2: "About", height: h),
          Expanded(child: Container(
            color: Color(0xffF9F99),
          ))




        ],
      ),
    );
  }

  Container _buildDivider() {
    return Container(
            margin: EdgeInsets.only(bottom: 12),
            height: 10,color: Color(0xffF9F99),);
  }

  Widget _buildSections({required String header, required  String title1, required String title2,  String? title3, required double height }) {
    return Container(
            height: title3 != null ? height*0.263 : height*0.189,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                    child: Text(header, style: TextStyle(fontSize: 18, color: black, fontWeight: FontWeight.w500),)),
                ListTile(
                  leading: Icon(Icons.person),
                  minLeadingWidth : 10,
                  title: _buildText(title1),
                ),
                Divider(height: 1,),
                ListTile(
                  leading: Icon(Icons.star),
                  minLeadingWidth : 10,
                  title: _buildText(title2),
                ),

                title3 != null ? ListTile(
                  leading: Icon(Icons.notifications),
                  minLeadingWidth : 10,
                  title: _buildText(title3),
                ) : Container(),
              ],
            )
          );
  }

  Text _buildText(String title) => Text(title, style: TextStyle(color: black, fontWeight: FontWeight.w600),);
}
