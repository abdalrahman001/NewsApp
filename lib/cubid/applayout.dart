import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubid/states.dart';

import 'cubit.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..getBuisiness(),
      child: BlocConsumer<AppCubit, Appstates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit =AppCubit.get(context);
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {cubit.getBuisiness();}
               ),
            appBar: AppBar(
              title: Text("NewsApp"),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search))
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
