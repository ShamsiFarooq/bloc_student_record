part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<StudentModel2> student,
    required dynamic function,
  }) = _Initial;

  factory HomeState.initial(){
    return const HomeState(student: [], function: null);
  }


}
