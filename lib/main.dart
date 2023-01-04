





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_ui/views/dashboard_page.dart';
import 'package:restaurant_ui/views/home_page.dart';
import 'package:restaurant_ui/views/profile_page.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey[350]
  ));

  runApp(ProviderScope(child: Home()));

}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),

          scaffoldBackgroundColor: Colors.grey[350],
        appBarTheme: AppBarTheme(
          color: Colors.grey[350],
          centerTitle: true
        )
      ),
      debugShowCheckedModeBanner: false,
        home: DashBoardPage()
    );
  }
}
