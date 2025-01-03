import 'package:cafe_order/composition_root.dart';
import 'package:cafe_order/src/models/models.dart';
import 'package:cafe_order/src/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_page_event.dart';
part 'orders_page_state.dart';
part 'orders_page_bloc.freezed.dart';

class OrdersPageBloc extends Bloc<OrdersPageEvent, OrdersPageState> {
  OrdersPageBloc() : super(OrdersPageState.initial()) {
    on<OrdersPageEvent>((event, emit) => event.when(ordersRequested: () async {
          emit(OrdersPageState.laoding());
          try {
            emit(OrdersPageState.loaded(
                orders: await _orderRepository.getAllOrders()));
          } catch (e) {
            emit(OrdersPageState.error(reason: e.toString()));
          }
        }));
  }

  final OrderRepositoryDriftImpl _orderRepository =
      getIt<OrderRepositoryDriftImpl>();
}
