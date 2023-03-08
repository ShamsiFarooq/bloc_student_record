import 'package:bloc/bloc.dart';
import 'package:database/db/functions/db_functions.dart';
import 'package:database/db/model/data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<Started>((event, emit) async {
      final studentDB = await Hive.openBox<StudentModel2>('student_db1');
      List<StudentModel2> student = studentDB.values.toList();
      print(student);
      emit(state.copyWith(student: student));
    });
    on<DeleteData>((event, emit) {
      emit(state.copyWith(function: deleteStudent(event.id)));
    });
  }
}
