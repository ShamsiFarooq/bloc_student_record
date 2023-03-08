part of 'add_student_bloc.dart';

@freezed
class AddStudentEvent with _$AddStudentEvent {
  const factory AddStudentEvent.addStudent({
    required String name,
    required String age,
    required String classname,
    required String number,
    required Uint8List image,
    
  }) = AddStudent;

  const factory AddStudentEvent.updateStudent({
    required String name,
    required String age,
    required String classname,
    required String number,
    required Uint8List image,
    required int id
  }) = UpdateStudent;

  const factory AddStudentEvent.updateImage({
    required Uint8List? image1
  }) = UpdateImage;
  
}