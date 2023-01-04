
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_ui/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  const MyAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
     return AppBar(
       leading: const Icon(CupertinoIcons.list_dash, color: red,),
      title: Text(title, style: const TextStyle(color: Colors.black),),
      actions: [
        IconButton(
          color: red,
          icon: const Icon(CupertinoIcons.cart_fill),
          onPressed: (){
          },
        ),

      ],
      elevation: 0,
    );
  }
}


