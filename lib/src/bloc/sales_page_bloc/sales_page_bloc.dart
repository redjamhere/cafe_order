import 'package:cafe_order/composition_root.dart';
import 'package:cafe_order/src/models/models.dart';
import 'package:cafe_order/src/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_page_event.dart';
part 'sales_page_state.dart';
part 'sales_page_bloc.freezed.dart';

class SalesPageBloc extends Bloc<SalesPageEvent, SalesPageState> {
  SalesPageBloc() : super(SalesPageState.initial()) {
    void listenProducts(ProductTypeModel type) {
      _productRepository.watchProductsByTypeId(type.id).listen((products) {
        emit(SalesPageState.productsLoaded(
            products: products, productType: type));
      });
    }

    on<SalesPageEvent>(
      (event, emit) => event.when(productTypesRequested: () async {
        emit(SalesPageState.loading());
        try {
          emit(SalesPageState.productTypesLoaded(
              productTypes: await _productTypeRepository.getAllProductType()));
        } catch (e) {
          emit(SalesPageState.productTypesError(reason: e.toString()));
        }
      }, productTypeChoosed: (productType) async {
        emit(SalesPageState.loading());
        try {
          emit(SalesPageState.productsLoaded(
              productType: productType,
              products: await _productRepository
                  .getProductsByTypeId(productType.id)));
          listenProducts(productType);
        } catch (e) {
          emit(SalesPageState.productsError(reason: e.toString()));
        }
      }),
    );
  }

  final ProductTypeRepositoryDriftImpl _productTypeRepository =
      getIt<ProductTypeRepositoryDriftImpl>();
  final ProductRepositoryDriftImpl _productRepository =
      getIt<ProductRepositoryDriftImpl>();
}
