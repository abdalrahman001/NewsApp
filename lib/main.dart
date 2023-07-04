import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/cubid/dio_helper.dart';

import 'cubid/applayout.dart';

void main() {
  DioHelper.init();
  runApp( MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(scaffoldBackgroundColor: Colors.white,
        appBarTheme:  AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white38,
          statusBarIconBrightness: Brightness.dark
        )

      ),
      ),
      home:AppLayout() ,
    );
  }

}
