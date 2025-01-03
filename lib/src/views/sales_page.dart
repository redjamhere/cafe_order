import 'package:cafe_order/src/bloc/order_creation_bloc/order_creation_bloc.dart';
import 'package:cafe_order/src/bloc/sales_page_bloc/sales_page_bloc.dart';
import 'package:cafe_order/src/models/models.dart';
import 'package:flutter/material.dart';
import 'package:cafe_order/src/common/extensions/num_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key, required this.table});

  final TableModel table;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SalesPageBloc()..add(SalesPageEvent.productTypesRequested()),
        ),
        BlocProvider(
          create: (context) => OrderCreationBloc(table: table)
            ..add(OrderCreationEvent.orderCreated()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Режим продаж"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 250,
              child: BlocBuilder<OrderCreationBloc, OrderCreationState>(
                builder: (context, state) {
                  var order = state.order;
                  var orderProducts = order.products;

                  if (orderProducts.isNotEmpty) {
                    return ListView.builder(
                        itemCount: orderProducts.length,
                        itemBuilder: (context, index) => _ChoosedItemTile(
                            name: orderProducts[index].product.name,
                            count: orderProducts[index].count,
                            price: orderProducts[index].totalPrice,
                            onAdd: () {
                              if (orderProducts[index].count + 1 >
                                  orderProducts[index].product.count) {
                                const snackBar = SnackBar(
                                  content: Text('Достигнут лимит'),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else {
                                context.read<OrderCreationBloc>().add(
                                    OrderCreationEvent.productCountChanged(
                                        isPositive: true,
                                        orderProductIndex: index,
                                        value: orderProducts[index].count + 1));
                              }
                            },
                            onRemove: () => context
                                .read<OrderCreationBloc>()
                                .add(OrderCreationEvent.productCountChanged(
                                    isPositive: false,
                                    orderProductIndex: index,
                                    value: orderProducts[index].count - 1))));
                  } else {
                    return Center(
                        child: Text(
                      "Список пуст",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ));
                  }
                },
              ),
            ),
            const Divider(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: BlocBuilder<SalesPageBloc, SalesPageState>(
                  builder: (context, state) {
                    return switch (state) {
                      Initial() || Loading() => Center(
                          child: CircularProgressIndicator(),
                        ),
                      ProductTypesLoaded(:final productTypes) => GridView.count(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          childAspectRatio: 4 / 3,
                          children: productTypes
                              .map((pt) => _ProductTypeCard(
                                  onTap: () => context
                                      .read<SalesPageBloc>()
                                      .add(SalesPageEvent.productTypeChoosed(
                                          produtType: pt)),
                                  typeName: pt.name))
                              .toList()),
                      ProductTypesError(:final reason) => Center(
                          child: Text(reason,
                              style: Theme.of(context).textTheme.displayMedium),
                        ),
                      ProductsLoaded(:final products, :final productType) =>
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () => context
                                        .read<SalesPageBloc>()
                                        .add(SalesPageEvent
                                            .productTypesRequested()),
                                    icon: Icon(Icons.arrow_back)),
                                Text(
                                  productType.name,
                                  textAlign: TextAlign.center,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            Expanded(
                              child: GridView.count(
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  crossAxisCount: 2,
                                  childAspectRatio: 4 / 3,
                                  children: products
                                      .map((pt) => _ProductCard(
                                            key: ValueKey('${pt.id}_product'),
                                            data: pt,
                                            onTap: () => context
                                                .read<OrderCreationBloc>()
                                                .add(OrderCreationEvent
                                                    .productAdded(product: pt)),
                                          ))
                                      .toList()),
                            ),
                          ],
                        ),
                      ProductsError(:final reason) => Center(
                          child: Text(reason,
                              style: Theme.of(context).textTheme.displayMedium),
                        ),
                    };
                  },
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: BlocBuilder<OrderCreationBloc, OrderCreationState>(
                    builder: (context, state) {
                  return Text(
                    'Итого: ${state.order.totalPrice}',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleLarge,
                  );
                }))
          ],
        ),
      ),
    );
  }
}

class _ProductTypeCard extends StatelessWidget {
  const _ProductTypeCard(
      {super.key, required this.typeName, required this.onTap});

  final String typeName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(4),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: Center(
              child: Text(
                typeName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({super.key, required this.data, required this.onTap});
  final ProductModel data;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/product_images/${data.imageName}',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            data.price.toPrice(),
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('Склад: ${data.count}')
                        ],
                      )
                    ],
                  ),
                ),
                Text(
                  data.name,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ChoosedItemTile extends StatelessWidget {
  const _ChoosedItemTile(
      {super.key,
      required this.name,
      required this.price,
      required this.count,
      required this.onAdd,
      required this.onRemove});

  final String name;
  final num price;
  final int count;
  final Function() onAdd;
  final Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        maxLines: 2,
      ),
      subtitle: Text('Итого: ${(count * price).toPrice()}'),
      trailing: RichText(
          text: TextSpan(
        style: TextStyle(color: Colors.black),
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: IconButton(
              onPressed: onAdd,
              color: Colors.green,
              icon: Icon(Icons.add),
            ),
          ),
          TextSpan(text: '$count', style: TextStyle(fontSize: 20)),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: IconButton(
                onPressed: onRemove,
                color: Colors.red,
                icon: Icon(Icons.remove)),
          ),
        ],
      )),
    );
  }
}
