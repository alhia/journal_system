import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/services_cubit.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ServicesCubit>(
      create: (context) => ServicesCubit()..init(),
      child: const ServicesView(),
    );
  }
}

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServicesCubit, ServicesState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return ScaffoldPage(
          content: state.map(
              initial: (_) => Container(),
              loaded: (loadedState) {
                return DataTable(
                  columns: const [DataColumn(label: Text('name'))],
                  rows: [
                    DataRow(
                      cells: loadedState.services
                          .map(
                            (e) => const DataCell(
                              Text("hello"),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                );
              }),
        );
      },
    );
  }
}
