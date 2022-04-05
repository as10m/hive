import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/widget/addStudent.dart';
import 'package:hive/widget/listStudent.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudentList'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            AddStudent(),
            Expanded(child: ListStudent())
          ],
        ),
      ),
    );
  }
}
