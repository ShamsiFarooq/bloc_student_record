part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = Started;

  const factory HomeEvent.deleteData({
    required int id,
  }) = DeleteData;
  
}