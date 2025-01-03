import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_model.freezed.dart';

@freezed
sealed class TableModel with _$TableModel {
  const factory TableModel({
    required int id,
    required String name,
  }) = _TableModel;
}
