import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/components/sharedPref.dart';
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

      theme:  Styles.lightThemeData(context),
      darkTheme: Styles.darkThemeData(context),
      home:AppLayout() ,
    );
  }

}