import 'package:cafe_order/composition_root.dart';
import 'package:cafe_order/src/models/models.dart';
import 'package:cafe_order/src/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.dart';
part 'home_page_event.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageState.initial()) {
    on<HomePageEvent>((event, emit) => event.when(
          tablesRequested: () async {
            emit(HomePageState.loading());
            try {
              emit(HomePageState.loaded(
                  tables: await _tableRepository.getAllTable()));
            } catch (e) {
              emit(HomePageState.error(reason: e.toString()));
            }
            return;
          },
        ));
  }

  final TableRepositoryDriftImpl _tableRepository =
      getIt<TableRepositoryDriftImpl>();
}
