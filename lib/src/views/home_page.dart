import 'package:cafe_order/src/bloc/home_page_bloc/home_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Выбор столика'),
        ),
        body: BlocProvider(
          create: (context) =>
              HomePageBloc()..add(HomePageEvent.tablesRequested()),
          child: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              return switch (state) {
                Initial() || Loading() => Center(
                    child: CircularProgressIndicator(),
                  ),
                Loaded(:final tables) => GridView.count(
                    padding: const EdgeInsets.all(10),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: tables
                        .map((t) => _TableButton(
                            key: ValueKey('table_${t.id}'),
                            onTap: () =>
                                context.push('/${t.id}/sales', extra: t),
                            title: t.name))
                        .toList(),
                  ),
                Error(:final reason) => Center(
                    child: Text(
                      reason,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  )
              };
            },
          ),
        ));
  }
}

class _TableButton extends StatelessWidget {
  const _TableButton({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(onPressed: onTap, child: Text(title)));
  }
}
