import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/function/db_function.dart';
import 'package:hive/model/StudentModel.dart';

class AddStudent extends StatelessWidget {
   AddStudent({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "NAME"
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          controller: _ageController,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "AGE"
          ),
        ),
        SizedBox(height: 20),
      ElevatedButton(
          onPressed: (){
            addStudentButton();
          },
          child: Icon(Icons.add),
      ),
      ],
    );
  }

Future <void> addStudentButton()async{
  final _name = _nameController.text.trim();
  final _age = _ageController.text.trim();
  if (_name.isEmpty || _age.isEmpty){
    return;
  }
  print("$_name  $_age");

  final _student=StudentModel(name: _name, age: _age);
addStudent(_student);
  }
}




