import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/components/sharedPref.dart';
import 'package:news_app/cubid/states.dart';

import 'cubit.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool theme=true;
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..getBuisiness(),
      child: BlocConsumer<AppCubit, Appstates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          var cubit =AppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("NewsApp"),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                IconButton(
                  onPressed: () {
                    if(theme==true){
                    DarkThemePreference.setDarkTheme(theme);
                    theme==false;
                    }else{ DarkThemePreference.setDarkTheme(theme);
                    theme==true;}
                  },
                  icon: Icon(Icons.brightness_4),
                ),

              ],
            ),
            body: cubit.screens[cubit.currentIndex] ,
            bottomNavigationBar:BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                items: cubit.bottomItems,
                onTap: (index){
                  cubit.changeBotNavBar(index);
                },
            ),


          );
        },
      ),
    );
  }
}
