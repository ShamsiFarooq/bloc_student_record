part of 'add_student_bloc.dart';

@freezed
class AddStudentState with _$AddStudentState {
  const factory AddStudentState({
    required Uint8List? image,
    // required String? name,
    // required String? age,
    // required String? classname,
    // required String? number,
    required dynamic function,
  }) = _Initial;

  factory AddStudentState.initial(){
    return const AddStudentState(function: null,image: null);
  }
}
