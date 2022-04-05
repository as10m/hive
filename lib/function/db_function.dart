import 'package:flutter/cupertino.dart';
import 'package:hive/model/StudentModel.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudent(StudentModel value){
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}