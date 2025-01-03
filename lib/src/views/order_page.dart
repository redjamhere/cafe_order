import 'package:cafe_order/src/bloc/orders_page_bloc/orders_page_bloc.dart';
import 'package:cafe_order/src/common/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          OrdersPageBloc()..add(OrdersPageEvent.ordersRequested()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Касса'),
        ),
        body: BlocBuilder<OrdersPageBloc, OrdersPageState>(
          builder: (context, state) {
            return switch (state) {
              Initial() ||
              Loading() =>
                Center(child: CircularProgressIndicator()),
              Error(:final reason) => Center(
                  child: Text(
                    reason,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              Loaded(:final orders) => ListView.separated(
                  reverse: true,
                  itemCount: orders.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      orders[index].table.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    leading: Icon(
                      Icons.print,
                      color: Colors.black.withValues(alpha: .5),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(color: Colors.grey),
                                children: [
                              TextSpan(text: '№ ${orders[index].id}'),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 10,
                              )),
                              TextSpan(
                                  text: DateFormat('hh:mm')
                                      .format(orders[index].createdAt)),
                            ])),
                        Text(
                          orders[index].totalPrice.toPrice(),
                          style: Theme.of(context).textTheme.titleLarge,
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, state) => Divider(
                    color: Theme.of(context).primaryColor,
                  ),
                )
            };
          },
        ),
      ),
    );
  }
}
