import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/shared.dart';
import '../cubid/cubit.dart';
import '../cubid/states.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, Appstates>(
      listener: (context, state) {
      },
      builder: (context, state) {

        var list=AppCubit.get(context).science;
        return ConditionalBuilder(
            condition: list.length>0,
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
