import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubid/states.dart';
import '../components/shared.dart';
import '../cubid/cubit.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, Appstates>(
      listener: (context, state) {
      },
      builder: (context, state) {

        var list=AppCubit.get(context).business;
        return ConditionalBuilder(
          condition: state is! GetBusinessLoadingState,
          builder: (context) => ListView.separated(
            itemBuilder: (context,index)=>buildAritcleItem(list[index]),
            separatorBuilder: (BuildContext context, int index)  =>SizedBox(height: 20,) ,
            itemCount: 10,
            physics: BouncingScrollPhysics(),
          ),
          fallback: (context) =>
            Center(child: CircularProgressIndicator())

        );
      },
    );
  }
}
