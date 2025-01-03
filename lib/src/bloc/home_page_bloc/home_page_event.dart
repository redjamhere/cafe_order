part of 'home_page_bloc.dart';

@freezed
sealed class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.tablesRequested() = _TablesRequested;
}
