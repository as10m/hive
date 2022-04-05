import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/function/db_function.dart';
import 'package:hive/model/StudentModel.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder:
            (BuildContext ctx, List<StudentModel>studentList, Widget? child) {
          return ListView.separated(
            itemBuilder: (ctx, index) {
              final data = studentList [index];

              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.age),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: studentList.length,
          );
        },
    );

  }
}
