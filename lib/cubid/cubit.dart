import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubid/states.dart';
import '../screens/bussines.dart';
import '../screens/science.dart';
import '../screens/sports.dart';
import 'dio_helper.dart';
class AppCubit extends Cubit<Appstates>{
  AppCubit():super(AppsInitialtate());
  static AppCubit get(context)=>BlocProvider.of(context);
  int currentIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
      icon: Icon(Icons.business_center),
     label: "Bussiness",
   ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports),
     label: "Sports",
   ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science),
     label: "Science",
   ),
  ];
  List<Widget> screens=[
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];
  void changeBotNavBar(int index){
    currentIndex=index;
    emit(BottomNavState());
  }
  List <dynamic> business=[];
  void getBuisiness(){
    emit(NewsGetBusinessNewsTrueState());
    DioHelper.getData(url:
    "v2/top-headlines",
      query: {
       'country':'us',
         'category': 'business',
        'apiKey':'b36bc4baefad4fd2a1f33b14ce194de8'
      }, ).then((value) {
      print("true");
      business=value?.data['articles'];
      print(business[1 ]['urlToImage']);
      emit(NewsGetBusinessNewsTrueState());
    }).catchError((error){
      emit(NewsGetBusinessNewsFalseState(error.toString()));
      print("error");
      print(error.toString());}
    ); }
  void getSports(){
    emit(NewsGetBusinessNewsTrueState());
    DioHelper.getData(url:
    "v2/top-headlines",
      query: {
       'country':'us',
         'category': 'sports',
        'apiKey':'b36bc4baefad4fd2a1f33b14ce194de8'
      }, ).then((value) {
      print("true");
      business=value?.data['articles'];
      print(business[1 ]['urlToImage']);
      emit(NewsGetBusinessNewsTrueState());
    }).catchError((error){
      emit(NewsGetBusinessNewsFalseState(error.toString()));
      print("error");
      print(error.toString());}
    ); }
  void getScience(){
    emit(NewsGetBusinessNewsTrueState());
    DioHelper.getData(url:
    "v2/top-headlines",
      query: {
       'country':'us',
         'category': 'science',
        'apiKey':'b36bc4baefad4fd2a1f33b14ce194de8'
      }, ).then((value) {
      print("true");
      business=value?.data['articles'];
      print(business[1 ]['urlToImage']);
      emit(NewsGetBusinessNewsTrueState());
    }).catchError((error){
      emit(NewsGetBusinessNewsFalseState(error.toString()));
      print("error");
      print(error.toString());}
    ); }
  void startApp(){}
}
