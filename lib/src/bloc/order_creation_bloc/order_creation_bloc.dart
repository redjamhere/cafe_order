import 'package:cafe_order/composition_root.dart';
import 'package:cafe_order/src/models/models.dart';
import 'package:cafe_order/src/models/order_model/order_product_model.dart';
import 'package:cafe_order/src/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_creation_event.dart';
part 'order_creation_state.dart';
part 'order_creation_bloc.freezed.dart';

class OrderCreationBloc extends Bloc<OrderCreationEvent, OrderCreationState> {
  OrderCreationBloc({required TableModel table})
      : super(OrderCreationState(
            order: OrderModel.creationOrder(totalPrice: 0, table: table))) {
    on<OrderCreationEvent>((event, emit) =>
        event.when(productAdded: (product) async {
          var orderProducts = List.of(state.order.products);

          bool isExist =
              orderProducts.indexWhere((e) => e.product.id == product.id) != -1;
          if (isExist) return;

          orderProducts.add(OrderProductModel(
              product: product, count: 1, totalPrice: product.price));
          emit(state.copyWith(
              order: state.order.copyWith(products: orderProducts)));

          num sum = 0;
          for (var p in state.order.products) {
            sum += p.count * p.product.price;
          }
          emit(state.copyWith(order: state.order.copyWith(totalPrice: sum)));
          await _orderRepository.updateOrder(state.order);
          await _productRepository
              .updateProduct(product.copyWith(count: product.count - 1));
        }, productCountChanged: (index, value, isPositive) async {
          var orderProducts = List.of(state.order.products);
          await _productRepository.updateProduct(orderProducts[index]
              .product
              .copyWith(count: orderProducts[index].product.count - value));
          if (value <= 0) {
            orderProducts.remove(orderProducts[index]);
          } else {
            orderProducts[index] = orderProducts[index].copyWith(count: value);
          }

          emit(state.copyWith(
              order: state.order.copyWith(products: orderProducts)));

          num sum = 0;
          for (var p in state.order.products) {
            sum += p.count * p.product.price;
          }
          emit(state.copyWith(order: state.order.copyWith(totalPrice: sum)));
          await _orderRepository.updateOrder(state.order);
        }, orderCreated: () async {
          int orderId = await _orderRepository
              .createOrder(state.order as OrderModelCreated);
          var createdOrder = await _orderRepository.getOrderById(orderId);
          emit(OrderCreationState(order: createdOrder));
        }));
  }

  final OrderRepositoryDriftImpl _orderRepository =
      getIt<OrderRepositoryDriftImpl>();

  final ProductRepositoryDriftImpl _productRepository =
      getIt<ProductRepositoryDriftImpl>();
}
