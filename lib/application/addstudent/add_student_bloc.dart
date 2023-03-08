import 'package:bloc/bloc.dart';
import 'package:database/db/functions/db_functions.dart';
import 'package:database/db/model/data_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_student_event.dart';
part 'add_student_state.dart';
part 'add_student_bloc.freezed.dart';

class AddStudentBloc extends Bloc<AddStudentEvent, AddStudentState> {
  AddStudentBloc() : super(AddStudentState.initial()) {
    on<AddStudent>((event, emit) {

      emit(state.copyWith(function: addStudent(StudentModel2(name: event.name, age: event.age, phone: event.number, classname: event.classname, image: event.image))));
    });

    on<UpdateStudent>((event, emit) => {
      emit(state.copyWith(function: updateStudent(StudentModel2(name: event.name, age: event.age, phone: event.number, classname: event.classname, image: event.image,id:event.id ), event.id)))
    });

    on<UpdateImage>((event, emit) => {
      emit(state.copyWith(image: event.image1))
    });
  }
}
