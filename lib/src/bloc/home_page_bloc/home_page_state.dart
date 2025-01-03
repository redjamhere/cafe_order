part of 'home_page_bloc.dart';

@freezed
sealed class HomePageState with _$HomePageState {
  factory HomePageState.initial() = Initial;
  factory HomePageState.loading() = Loading;
  factory HomePageState.loaded({required List<TableModel> tables}) = Loaded;
  factory HomePageState.error({required String reason}) = Error;
}
